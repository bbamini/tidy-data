# Codebook
## Description of Variable Names

####Subject
Factor variable ranging from 1 to 30 to indicate the volunteer ID
####Activity
Factor variable describing the activity type of the volunteer

1 - WALKING

2 - WALKING UPSTAIRS

3 - WALKING DOWNSTAIRS

4 - SITTING

5 - STANDING

6 - LAYING


#### Remaining variables
Variable names are broken into 4 parts
##### Domain indication

f - Indicates signal is in Fast Fourier Transform domain

t - Indicates signal is in time domain

##### Feature Vector for each pattern

BodyAcc-XYZ: 
Body Acceleration signal in three dimensions of X, Y and Z

GravityAcc-XYZ (three components X, Y, Z): 
Gravity Acceleration signal in three dimensions of X, Y and Z

BodyAccJerk-XYZ:
Body linear acceleration jerk signal in three dimensions of X, Y and Z

BodyGyro-XYZ:
Body angular velocity signal in three dimensions of X, Y and Z

BodyGyroJerk-XYZ:
Body angular velocity jerk signal in three dimensions of X, Y and Z

BodyAccMag:
Magnitude of three-dimensional signal calculated using Euclidean norm

GravityAccMag:
Magnitude of three-dimensional signal calculated using Euclidean norm

BodyAccJerkMag:
Magnitude of three-dimensional signal calculated using Euclidean norm

BodyGyroMag:
Magnitude of three-dimensional signal calculated using Euclidean norm

BodyGyroJerkMag:
Magnitude of three-dimensional signal calculated using Euclidean norm

##### Estimate from signal

mean(): Mean value

std(): Standard deviation

##### Summary data type for a given subject and given activity

_mean: mean of data for a given subject and given activity

_sd: standard deviation of data for a given subject and given activity


For example the variable named "tBodyGyroJerkMag-mean()_mean" indicates the mean time domain signal of the magnitude of three-dimensional signal calculated using Euclidean norm summarized by averaging for a given participant and given activity.
