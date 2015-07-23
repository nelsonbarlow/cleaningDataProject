library(dplyr)

#Load in data frames
activity_labels <- read.table("UCI HAR Dataset/activity_labels.txt",col.names =  c("activity_id","acivity_label"))
features <- read.table("UCI HAR Dataset/features.txt" , col.names = c("feature_id", "feature_name"))

xtrain <- read.table("UCI HAR Dataset/train/X_train.txt")#, col.names = features[,2])
ytrain <- read.table("UCI HAR Dataset/train/Y_train.txt", col.names = c("activity"))
strain <- read.table("UCI HAR Dataset/train/subject_train.txt", col.names = c("subject"))

xtest <- read.table("UCI HAR Dataset/test/X_test.txt")#, col.names = features[,2])
ytest <- read.table("UCI HAR Dataset/test/Y_test.txt", col.names = c("activity"))
stest <- read.table("UCI HAR Dataset/test/subject_test.txt", col.names = c("subject"))

#combine all training dataset
train <- cbind(xtrain, ytrain)
train <- cbind(train, strain)

#combine all test dataset
test <- cbind(xtest,ytest)
test <- cbind(test, stest)

#combine training and test datasets
totalData <- rbind(train, test)

relevantColumns <- grep("mean\\(\\)|std\\(\\)", features[,2], ignore.case = TRUE)
relevantData <- select(totalData, relevantColumns)

tidyFeatures <- filter(features, feature_id %in% relevantColumns)
colnames(relevantData) <- tidyFeatures[,2]


relevantData$activity <- factor(totalData$activity, levels = activity_labels$activity_id, labels = activity_labels$acivity_label)
relevantData$subject <- totalData$subject



tidyFeatures[,2] <- sub("BodyAcc-", " Body Acceleration ", tidyFeatures[,2])
tidyFeatures[,2] <- sub("GravityAcc-", " Gravity Acceleration ", tidyFeatures[,2])

byActivityAndSubject <- group_by(relevantData, activity, subject)
tidyDf <- summarise_each(byActivityAndSubject, funs(mean))
