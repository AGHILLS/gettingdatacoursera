---
title: "Code Book"
author: "Alan Hills"
date: "20 June 2015"
output: html_document
---

### This Code Book describes the variables in the tidy_data.txt file
  
Each measurement corresponds to an aggregated mean of each the measurements over multiple samples, collected by both activy and subject.  
  
### Variables
  
The variables subject and activity refer to which individual was involved and the activity they they were performing when the measurements were taken. 

### Measurements

Each measurement name is comprised of 5 elements.
  
* The 1st element is either a t or f. This corresponds to whether the variable was measured in the time domain or in the frequency domain (via a fourier transform)

* The 2nd element describes whether the variable corresponded to the Body or Gravity signal after separation of the acceleration signal through a low frequency filter.

* The 3rd element decribes the signal being measured. For Gravity signals this will be Acc. For body signals this can be Acc, AccJerk, Gyro or GyroJerk, depending if the signal came from the accelerometer after decomposition into the gravity and body signals or from the gyroscope. The Jerk variables for each are arrived at by calculating the derivative of the signal w.r.t time.

* The 4th element describes the variable measured, in the tidy data we are only interested in the mean and the standard deviations. These are the mean values of multiple measurements of the mean and standard deviations of the signal. They are denoted by mean() and std().

* The 5th element decribes the axis the measurement was being taken from. Either X,Y,Z or Mag for the Euclidean magnitude (root mean squared value).

nb: When the Mag option is taken, for unknown reasons, when the rough data set was generated the "Mag" element is swapped with element 4. This probably should be corrected at some point for ease of parsing variable names.

  
### Examples:   
  
The variable name tBodyAcc-mean()-X refers to: The mean of the time domain of the Body Acceleration signal on the X Axis. 
  
The variable name tGravityAccMag-std() refers to: The mean of the standard deviations of each sample of the Euclidean magnitude of the the Gravity Acceleration signal.

### Units
    
    The Units of each measurement are as follows:
    
    * Acc measurements are in terms of g 
    * AccJerk measurements are in g/s
    * Gyro measurements are in radians/s
    * GyroJerk measurements are in radians/s^2

### A complete list of the variable names contained in the tidy_data.txt file:
  

tBodyAcc-mean()-X  
tBodyAcc-mean()-Y  
tBodyAcc-mean()-Z  
tGravityAcc-mean()-X  
tGravityAcc-mean()-Y  
tGravityAcc-mean()-Z  
tBodyAccJerk-mean()-X  
tBodyAccJerk-mean()-Y  
tBodyAccJerk-mean()-Z  
tBodyGyro-mean()-X  
tBodyGyro-mean()-Y  
tBodyGyro-mean()-Z  
tBodyGyroJerk-mean()-X  
tBodyGyroJerk-mean()-Y  
tBodyGyroJerk-mean()-Z  
tBodyAccMag-mean()  
tGravityAccMag-mean()  
tBodyAccJerkMag-mean()  
tBodyGyroMag-mean()  
tBodyGyroJerkMag-mean()  
fBodyAcc-mean()-X  
fBodyAcc-mean()-Y  
fBodyAcc-mean()-Z  
fBodyAccJerk-mean()-X  
fBodyAccJerk-mean()-Y  
fBodyAccJerk-mean()-Z  
fBodyGyro-mean()-X  
fBodyGyro-mean()-Y  
fBodyGyro-mean()-Z  
fBodyAccMag-mean()  
fBodyAccJerkMag-mean()  
fBodyGyroMag-mean()  
fBodyGyroJerkMag-mean()  
tBodyAcc-std()-X  
tBodyAcc-std()-Y  
tBodyAcc-std()-Z  
tGravityAcc-std()-X  
tGravityAcc-std()-Y  
tGravityAcc-std()-Z  
tBodyAccJerk-std()-X  
tBodyAccJerk-std()-Y  
tBodyAccJerk-std()-Z  
tBodyGyro-std()-X  
tBodyGyro-std()-Y  
tBodyGyro-std()-Z  
tBodyGyroJerk-std()-X  
tBodyGyroJerk-std()-Y  
tBodyGyroJerk-std()-Z  
tBodyAccMag-std()  
tGravityAccMag-std()  
tBodyAccJerkMag-std()  
tBodyGyroMag-std()  
tBodyGyroJerkMag-std()  
fBodyAcc-std()-X  
fBodyAcc-std()-Y  
fBodyAcc-std()-Z  
fBodyAccJerk-std()-X  
fBodyAccJerk-std()-Y  
fBodyAccJerk-std()-Z  
fBodyGyro-std()-X  
fBodyGyro-std()-Y  
fBodyGyro-std()-Z  
fBodyAccMag-std()  
fBodyAccJerkMag-std()  
fBodyGyroMag-std()  
fBodyGyroJerkMag-std()  
