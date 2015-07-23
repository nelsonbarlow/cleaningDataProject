# Getting and Cleaning Data Course Project / John Hopkins University (Coursera)

This repo contains a run_analisys.r that transforms raw data into tidy data according to the specifications of the course.

For this script to work the data from the link below must be downloaded to the same path as the script and extracted.

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

The script is appropriately commented with all the steps taken to transform the data.

First it loads the dplyr library which is used throughout the script.

It then loads in all the required files into data frames.

The data frames are then combined in stages. First stage is combine the training data frames and test data frame. It then combines the 2 new sets of data frames into one.

Note: I have chosen to preserve all the intermediate data frames to be able to look back at the step by step modifications.

Using grep, I then pick out the mean() and std() variables and pick them out from the total data frame into a relevant data frame. I also give the columns relevant names at this stage.

Finally ready to append the subject and activity variables into the relevantData data frame. I felt it would make more sense to only add at this stage because these columns would not have been caught by the grep and would have to appended again.

Following two lines groups the data by activity and subject and uses the mean function to aggregate the data.

Final line just writes the tidy data frame into a file.
