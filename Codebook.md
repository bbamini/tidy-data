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

BodyAcc-XYZ (three components X, Y, Z)

GravityAcc-XYZ (three components X, Y, Z)

BodyAccJerk-XYZ (three components X, Y, Z)

BodyGyro-XYZ (three components X, Y, Z)

BodyGyroJerk-XYZ (three components X, Y, Z)

BodyAccMag

GravityAccMag

BodyAccJerkMag

BodyGyroMag

BodyGyroJerkMag

##### Estimate from signal

mean(): Mean value

std(): Standard deviation

##### Summary data type for a given subject and given activity

_mean: mean of data for a given subject and given activity

_sd: standard deviation of data for a given subject and given activity
