# tidy-data
## Getting and Cleaning Data Course Project

This repo consists of the following as a part of the Course project for the "Getting and Cleaning Data" Coursera course:
* README.md provides a description of the contents of this repo
* run_analysis.R provides the R script for this assignment
* Codebook provides a description of the data that is generated using run_analysis.R

As a part of this project, data collected using Samsung sensors (accelerometer and gyroscope) on 30 voluteers are acquired and tidied. 
The original source of the data is "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"


## run_analysis.R
The script run_analysis.R assumes that a folder entitled "UCI HAR Dataset" is stored in the working directory.
The "UCI HAR Dataset" must contain 
* 'features.txt': List of all features.
* 'activity_labels.txt': Links the class labels with their activity name.
* 'train/X_train.txt': Training set.
* 'train/y_train.txt': Training labels.
* 'test/X_test.txt': Test set.
* 'test/y_test.txt': Test labels.
* 'train/subject_train.txt': Subject labels for training set. 
* 'test/subject_test.txt': Subject labels for test data set. 

run_analysis.R reads these text files as R objects. It then merges the test and training set data. 
The data is grouped by a subject ID that ranges from 1 to 30 as well as descriptive activity labels. 
Labels for variables in the data set are acquired from features.txt. 
Further descriptions on the variable names is provided in the Codebook. 
