#Codebook

## Overview of data

A short introduction to the data held by the finalized tidy data frame from the website where the raw data was downloaded from: 

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

> The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

> The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.

The tidy data frame is the result of the following manipulation of the raw data
1. Merge the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement. 
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names. 
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

## Details of variables held in tidy data frame

* **Activity**: The activity being performed by the subject. This factor has 6 levels specified below.
    + WALKING
    + WALKING_UPSTAIRS
    + WALKING_DOWNSTAIRS
    + SITTING
    + STANDING
    + LAYING

* **Subject**:  holds the id of the subject performing the activity. Range is between 1 - 30.

**The value held by the following variables represents the mean of all measures taken grouped by activity and subject.**

* The below variables (initiating with t) were captured at a constant rate of 50Hz.

    + tBodyAcc-mean()-X - Holds the mean of all means of body acceleration on the X axis
    + tBodyAcc-mean()-Y - Holds the mean of all means of body acceleration on the Y axis
    + tBodyAcc-mean()-Z - Holds the mean of all means of body acceleration on the Z axis
    
    + tBodyAcc-std()-X - holds the mean of all standard deviations of body acceleration on the X axis
    + tBodyAcc-std()-Y - holds the mean of all standard deviations of body acceleration on the Y axis
    + tBodyAcc-std()-Z - holds the mean of all standard deviations of body acceleration on the Z axis
    
    + tGravityAcc-mean()-X - holds mean of all means of gravity acceleration on the X axis
    + tGravityAcc-mean()-Y - holds mean of all means of gravity acceleration on the Y axis
    + tGravityAcc-mean()-Z - holds mean of all means of gravity acceleration on the Z axis
    
    + tGravityAcc-std()-X - holds mean of all standard deviation of gravity acceleration on the X axis
    + tGravityAcc-std()-Y - holds mean of all standard deviation of gravity acceleration on the Y axis
    + tGravityAcc-std()-Z - holds mean of all standard deviation of gravity acceleration on the Z axis
    
    + tBodyAccJerk-mean()-X - holds mean of all means of body linear acceleration derived in time on the X axis
    + tBodyAccJerk-mean()-Y - holds mean of all means of body linear acceleration derived in time on the Y axis
    + tBodyAccJerk-mean()-Z - holds mean of all means of body linear acceleration derived in time on the Z axis
    
    + tBodyAccJerk-std()-X - holds mean of all standard deviations of body linear acceleration derived in time on the X axis
    + tBodyAccJerk-std()-Y - holds mean of all standard deviations of body linear acceleration derived in time on the Y axis
    + tBodyAccJerk-std()-Z - holds mean of all standard deviations of body linear acceleration derived in time on the Z axis
    
    + tBodyGyro-mean()-X - holds mean of all means of body angular velocity on the X axis
    + tBodyGyro-mean()-Y - holds mean of all means of body angular velocity on the Y axis
    + tBodyGyro-mean()-Z - holds mean of all means of body angular velocity on the Z axis
    
    + tBodyGyro-std()-X - holds mean of all standard deviations of body angular velocity on the X axis
    + tBodyGyro-std()-Y - holds mean of all standard deviations of body angular velocity on the Y axis
    + tBodyGyro-std()-Z - holds mean of all standard deviations of body angular velocity on the Z axis
    
    + tBodyGyroJerk-mean()-X - holds mean of all means of body angular velocity derived in time on the X axis
    + tBodyGyroJerk-mean()-Y - holds mean of all means of body angular velocity derived in time on the Y axis
    + tBodyGyroJerk-mean()-Z - holds mean of all means of body angular velocity derived in time on the Z axis

    + tBodyGyroJerk-std()-X - holds mean of all standard deviations of body angular velocity derived in time on the X axis
    + tBodyGyroJerk-std()-Y - holds mean of all standard deviations of body angular velocity derived in time on the Y axis
    + tBodyGyroJerk-std()-Z - holds mean of all standard deviations of body angular velocity derived in time on the Z axis

* The magnitude of these three-dimensional signals were calculated using the Euclidean norm into the **Mag**nitude variables below:

    + tBodyAccMag-mean()
    + tBodyAccMag-std() 
    + tGravityAccMag-mean()
    + tGravityAccMag-std()
    + tBodyAccJerkMag-mean() 
    + tBodyAccJerkMag-std()
    + tBodyGyroMag-mean()
    + tBodyGyroMag-std()
    + tBodyGyroJerkMag-mean() 
    + tBodyGyroJerkMag-std()
    
    
* The variables below (initiating with f) are equivalent measures to their t counterparts above but with Fast Fourier Transform applied.

    + fBodyAcc-mean()-X - Holds the mean of all means of body acceleration on the X axis
    + fBodyAcc-mean()-Y - Holds the mean of all means of body acceleration on the Y axis
    + fBodyAcc-mean()-Z - Holds the mean of all means of body acceleration on the Z axis
    
    + fBodyAcc-std()-X - holds the mean of all standard deviations of body acceleration on the X axis
    + fBodyAcc-std()-Y - holds the mean of all standard deviations of body acceleration on the Y axis
    + fBodyAcc-std()-Z - holds the mean of all standard deviations of body acceleration on the Z axis
    
    + fGravityAcc-mean()-X - holds mean of all means of gravity acceleration on the X axis
    + fGravityAcc-mean()-Y - holds mean of all means of gravity acceleration on the Y axis
    + fGravityAcc-mean()-Z - holds mean of all means of gravity acceleration on the Z axis
    
    + fGravityAcc-std()-X - holds mean of all standard deviation of gravity acceleration on the X axis
    + fGravityAcc-std()-Y - holds mean of all standard deviation of gravity acceleration on the Y axis
    + fGravityAcc-std()-Z - holds mean of all standard deviation of gravity acceleration on the Z axis
    
    + fBodyAccJerk-mean()-X - holds mean of all means of body linear acceleration derived in time on the X axis
    + fBodyAccJerk-mean()-Y - holds mean of all means of body linear acceleration derived in time on the Y axis
    + fBodyAccJerk-mean()-Z - holds mean of all means of body linear acceleration derived in time on the Z axis
    
    + fBodyAccJerk-std()-X - holds mean of all standard deviations of body linear acceleration derived in time on the X axis
    + fBodyAccJerk-std()-Y - holds mean of all standard deviations of body linear acceleration derived in time on the Y axis
    + fBodyAccJerk-std()-Z - holds mean of all standard deviations of body linear acceleration derived in time on the Z axis
    
    + fBodyGyro-mean()-X - holds mean of all means of body angular velocity on the X axis
    + fBodyGyro-mean()-Y - holds mean of all means of body angular velocity on the Y axis
    + fBodyGyro-mean()-Z - holds mean of all means of body angular velocity on the Z axis
    
    + fBodyGyro-std()-X - holds mean of all standard deviations of body angular velocity on the X axis
    + fBodyGyro-std()-Y - holds mean of all standard deviations of body angular velocity on the Y axis
    + fBodyGyro-std()-Z - holds mean of all standard deviations of body angular velocity on the Z axis
    
    + fBodyGyroJerk-mean()-X - holds mean of all means of body angular velocity derived in time on the X axis
    + fBodyGyroJerk-mean()-Y - holds mean of all means of body angular velocity derived in time on the Y axis
    + fBodyGyroJerk-mean()-Z - holds mean of all means of body angular velocity derived in time on the Z axis

    + fBodyGyroJerk-std()-X - holds mean of all standard deviations of body angular velocity derived in time on the X axis
    + fBodyGyroJerk-std()-Y - holds mean of all standard deviations of body angular velocity derived in time on the Y axis
    + fBodyGyroJerk-std()-Z - holds mean of all standard deviations of body angular velocity derived in time on the Z axis

* The magnitude of these three-dimensional signals were calculated using the Euclidean norm into the **Mag**nitude variables below:

    + fBodyAccMag-mean()
    + fBodyAccMag-std() 
    + fGravityAccMag-mean()
    + fGravityAccMag-std()
    + fBodyAccJerkMag-mean() 
    + fBodyAccJerkMag-std()
    + fBodyGyroMag-mean()
    + fBodyGyroMag-std()
    + fBodyGyroJerkMag-mean() 
    + fBodyGyroJerkMag-std()

