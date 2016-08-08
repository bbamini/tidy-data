# Reading raw data files into R

# Contains names/descriptions of features
features <- read.table("UCI HAR Dataset/features.txt")

# Contains labels for activities
activity_labels <- read.table("UCI HAR Dataset/activity_labels.txt")

# Contains test data
X_test <- read.table("UCI HAR Dataset/test/X_test.txt")

# Contains subject IDs for given test data
subject_test <- read.table("UCI HAR Dataset/test/subject_test.txt")
# Converts subject IDs into a factor variable
subject_test_factor <- factor(subject_test$V1) 
# Contains activity type for given test data
y_test <- read.table("UCI HAR Dataset/test/y_test.txt")
# Converts activity info into a factor variable
y_test_factor <- factor(y_test$V1, levels = activity_labels$V1, 
                        labels = activity_labels$V2)

# Contains training data set
X_train <- read.table("UCI HAR Dataset/train/X_train.txt")
# Contains subject IDs for given training dataset
subject_train <- read.table("UCI HAR Dataset/train/subject_train.txt")
# Converts subject IDs into a factor variable
subject_train_factor <- factor(subject_train$V1)
# Contains activity type for given training dataset
y_train <- read.table("UCI HAR Dataset/train/y_train.txt")
# Converts activity info into a factor variable with named activity labels
y_train_factor <- factor(y_train$V1, levels = activity_labels$V1, 
                        labels = activity_labels$V2)


# Create a vector with variable names for the columns of X_test and X_train
varnames <- as.character(features$V2)

# Renaming columns in X_test and X_train
names(X_test) <- varnames
names(X_train) <- varnames

library(plyr)
library(dplyr)

# Merging the test data with the subject ID and activity info
X_test <- cbind(subject_test_factor, y_test_factor, X_test)
names(X_test)[1] <- "Subject"
names(X_test)[2] <- "Activity"

# Merging the training dataset with the subject ID and activity info
X_train <- cbind(subject_train_factor, y_train_factor, X_train)
names(X_train)[1] <- "Subject"
names(X_train)[2] <- "Activity"

# Merging the test data and training dataset
mydata <- rbind(X_test, X_train)

# Finding data that is the mean and standard deviation for measurements
# by finding feature names containing mean() and std()
mean_index <- grep("mean\\()", names(mydata))
std_index <- grep("std\\()", names(mydata))
indices <- sort(c(1, 2, mean_index, std_index))

# Creating a new dataset with only mean and standard deviation of measurements
mean_std_data <- mydata[, indices]

# Creating an independent tidy data set with the average of each variable
# for each activity and each subject
result_df <- mean_std_data %>% group_by(Subject, Activity) %>% 
    summarize_each(funs(mean, sd)) 

write.table(result_df, file = "tidy_data.txt", row.names = FALSE)
