##
## STEP 0: RStudio and directory environment configuration.
##

## Ensure the following user libraries are loaded into RStudio before proceeding.
library("plyr")
library("reshape2")
library("httr")
library("bitops")
library("RCurl")
library("httpuv")
library("data.table")
library("Hmisc")
library("markdown")
library("rstudio")

## Check for the './data' directory and if it doesn't exist create it as
## this is where all the files will be downloaded and stored.
if (!file.exists("./data")) {dir.create("./data")}

##
##  STEP 1: Merge the training and the test sets to create one data set.
##

##
##  STEP 1a: Download the source .zip data file into the ./data directory.
##

## Source data file URL (taken from project instructions).
fileURL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"

## Local Zip file name for the 'UCI HAR Dataset'.
zipfile <- "./data/getdata-projectfiles-UCI HAR Dataset.zip"

## Download the source .zip data file for the 'UCI HAR Dataset'.
download.file(url=fileURL,
              destfile=zipfile,
              quiet=TRUE)

## Record the date the file was downloaded.
dateDownloaded <- date()

##
##  STEP 1b: Unzip the .zip data file into the ./data directory.
##

## Unzip the .zip data file for the 'UCI HAR Dataset'. This creates the
## directory 'UCI HAR Dataset' in the ./data directory.
unzip(zipfile,
      overwrite=TRUE,
      exdir="./data")

##
##  STEP 1c: Read the eight raw data files into the RStudio environment.
##
   
## List the files in the 'UCI HAR Dataset'
## fileList <- list.files(path="./data/UCI HAR Dataset",
##                        full.names=TRUE,
##                        recursive=TRUE)

## The following raw data files need to be read into the RStudio environment
## See the README.md file for more details
##    "./data/UCI HAR Dataset/activity_labels.txt"
##    "./data/UCI HAR Dataset/features.txt"
##    "./data/UCI HAR Dataset/test/subject_test.txt"
##    "./data/UCI HAR Dataset/test/X_test.txt"
##    "./data/UCI HAR Dataset/test/y_test.txt"
##    "./data/UCI HAR Dataset/train/subject_train.txt"
##    "./data/UCI HAR Dataset/train/X_train.txt"
##    "./data/UCI HAR Dataset/train/y_train.txt"

## Read the 'activity' labels, skipping the first column of the data set which
## contains an integer representing the row number.
activityLabels <- read.table(file="./data/UCI HAR Dataset/activity_labels.txt",
                             header=FALSE,
                             colClasses=c("NULL","factor"))

## Read the 'features' labels, skipping the first column of the data set which
## contains an integer representing the row number.
featuresLabels <- read.table(file="./data/UCI HAR Dataset/features.txt",
                             header=FALSE,
                             colClasses=c("NULL","factor"))

## Read the test data set files.
testSubjectData <- read.table(file="./data/UCI HAR Dataset/test/subject_test.txt",
                              header=FALSE)
testXData <- read.table(file="./data/UCI HAR Dataset/test/X_test.txt",
                        header=FALSE)
testYData <- read.table(file="./data/UCI HAR Dataset/test/y_test.txt",
                        header=FALSE)

## Read the training data set files.
trainSubjectData <- read.table(file="./data/UCI HAR Dataset/train/subject_train.txt",
                               header=FALSE)
trainXData <- read.table(file="./data/UCI HAR Dataset/train/X_train.txt",
                         header=FALSE)
trainYData <- read.table(file="./data/UCI HAR Dataset/train/y_train.txt",
                         header=FALSE)

##
##  STEP 2: Extract only the measurements on the mean and standard deviation for each measurement.
##

##
##  STEP 2a: Apply the measurement feature label to the data frame elements.
##

## Apply the labels 'subjectid' and 'activity' to the data frame elements
## for test and training data so that we don't have to keep referring to V2.
names(testSubjectData) = "subjectid"
names(trainSubjectData) = "subjectid"
names(testYData) = "activity"
names(trainYData) = "activity"

##
##  STEP 2b: Apply the measurement feature labels to the data frame elements.
##

## This step must be performed before the extraction so that the 'testXData'
## and 'trainXData' frames have the correct variable labels.
names(testXData) = featuresLabels$V2
names(trainXData) = featuresLabels$V2

##
##  STEP 2c: Extract the measurements on the mean and standard deviation.
##

## Extract only the measurements on the mean and standard deviation for each
## measurement using the regular expression "mean[(]|std[(]" which will locate
## all the feature labels that have 'mean(' and 'std(' in their names.  When you
## are done, you will have extracted 66 features from the 561 features found in
## the original data set.  See the "features.txt" file located in the
## "UCI HAR Dataset"' directory for more details on feature names.
extractedTestXData <- testXData[,grep("mean[(]|std[(]",featuresLabels$V2,value=TRUE)]
extractedTrainXData <- trainXData[,grep("mean[(]|std[(]",featuresLabels$V2,value=TRUE)]

##
##  STEP 3: Uses descriptive activity names to name the activities in the data set.
##

## Convert the test and training Y data from integers to factors which will
## be used later on to replace the integer values for 'activity'.
testYData$activity = factor(testYData$activity, labels=activityLabels$V2)
trainYData$activity = factor(trainYData$activity, labels=activityLabels$V2)

##
##  STEP 4: Appropriately labels the data set with descriptive variable names.
##

##
##  STEP 4a: Merge all the test and training data into one large data frame.
##

## Merge the 'test' data into one data frame.
mergedTestData <- cbind(testSubjectData,testYData,extractedTestXData)

## Merge the 'training' data into one data frame.
mergedTrainData <- cbind(trainSubjectData,trainYData,extractedTrainXData)

## Merge the 'test' and 'training' data into one large data frame.
mergedData <- rbind(mergedTrainData,mergedTestData)

##
##  STEP 4b: Using the melt() and dcast() functions reshape the data to make it tidy.
##

## Order the merged data by subjectid and then by activity.
mergedData <- arrange(mergedData,subjectid,activity)

## Melt the merged data such that 'subjectid' and 'activity' are the
## 'id' variables (mergedData columns 1:2) and all remaining variables
## are the 'measurement' variables (mergedData columns 3:68).  This produces
## a 'tall' tidy data frame.
meltedData <- melt(mergedData, id.vars=1:2, measure.vars=3:68)

## Cast the melted data back into a tidy data frame where each row contains
## the 'subjectid' and 'activity' followed by the mean of each of measurement
## variable.
tidyData <- dcast(meltedData, subjectid + activity ~ variable, mean)

##
##  STEP 4c: Label the data set with descriptive variable names.
##

## Extract the names from the tidyData data frame.
tidynames <- names(tidyData)

## Edit the tidy data column names to make them descriptive variable names.
##  1. Correct for the duplicated word 'Body' in some of the feature labels
##  2. Remove all occurances of the characters -,()
##  3. Replace all occurances of 't' as the first character with 'AverageOfTimeDomain'
##  4. Replace all occurances of 'f' as the first character with 'AverageOfFastFourierTransform'
##  5. Replace all occurances of 'Acc' with 'Accelerometer'
##  6. Replace all occurances of 'Gyro' with 'Gyroscope'
##  7. Replace all occurances of 'Mag' with 'Magnitude'
##  8. Replace all occurances of 'std' with 'Standard Deviation'
##  9. Set all text to lower case
tidynames <- gsub("BodyBody", "Body", tidynames)
tidynames <- gsub("[-,()]", "", tidynames)
tidynames <- gsub("^t", "MeanOfTimeDomain", tidynames)
tidynames <- gsub("^f", "MeanOfFastFourierTransform", tidynames)
tidynames <- gsub("Acc", "Accelerometer", tidynames)
tidynames <- gsub("Gyro", "Gyroscope", tidynames)
tidynames <- gsub("Mag", "Magnitude", tidynames)
tidynames <- gsub("std", "StandardDeviation", tidynames)
tidynames <- tolower(tidynames)

## Replace the edited names into the tidyData data frame.
names(tidyData) = tidynames

##
##  STEP 5: Create an independent tidy data set with the average of each variable for each activity and each subject.
##

## Write the tidyData data frame out as a comma separated value (.csv) text
## file "tidydataset.csv"
write.csv(tidyData, file="./data/tidydataset.csv", row.names=FALSE)
