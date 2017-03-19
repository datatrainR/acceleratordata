###############################################################
## Run Analysis - Homework assignment script                  #
##                                                            #
## ToDo: Download data from web, merge to one file and tidy up#
## Author: DatatrainR                                         #
###############################################################


#### PLEASE SET YOUR WORKING DIRECTORY HERE ####
setwd("E:/Lukas/Coursera/Data Specialization/getting_and_cleaning_data/acceleratordata")


#################
#### SETUP   ####
#################

#Load packages
require(data.table)

#Download zipfile to wd, unzip
webadress <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(url = webadress, destfile = "zippeddata.zip", method = "auto")
testdata <- unzip("zippeddata.zip")

###################
#### Load Data  ###
###################

#Read .txt files
## Read meta-info
# activity labels
activity_factor <- read.table("./UCI HAR Dataset/activity_labels.txt")[,2]
# features
feature_factor <- read.table("./UCI HAR Dataset/features.txt")[,2]


## Read train data
x_train <- read.table("./UCI HAR Dataset/train/X_train.txt")
names(x_train) <- feature_factor

y_train <- read.table("./UCI HAR Dataset/train/y_train.txt")
names(y_train) <- "activity"

train_subject <- read.table("./UCI HAR Dataset/train/subject_train.txt")
names(train_subject) <- "subject"


# cbind train data
train_table <- data.table(train_subject, y_train, x_train)


## Read test data
x_test <- read.table("./UCI HAR Dataset/test/X_test.txt")
names(x_test) <- feature_factor

y_test <- read.table("./UCI HAR Dataset/test/y_test.txt")
names(y_test) <- "activity"

test_subject <- read.table("./UCI HAR Dataset/test/subject_test.txt")
names(test_subject) <- "subject"


# cbind test data
test_table <- data.table(test_subject, y_test, x_test)

######################
#### Merge&Extract ###
######################

## Merge datasets
full_table <- rbind(train_table, test_table)


## Extract mean & stdef info (and carry subject&activity) (and order by subject right away)
relevant_features <- grepl("subject|activity|mean()|std()", names(full_table))
sum(relevant_features)

relevant_table <- full_table[,..relevant_features][order(subject)]

########################
#### Sensible Naming ###
########################

# Format activity as factor
relevant_table$activity <- factor(relevant_table$activity)
levels(relevant_table$activity) <- activity_factor

# Substitute Variable names to sensible
substitutetable <- data.frame(pattern = c("^t", "^f", "Acc", "Gyro", "BodyBody", "Body", "-", "\\()"), 
                              replacement =c("time_", "freq_", "accelerometer", "gyroscope", "body", "body", "_", ""))
for (rows in 1:length(substitutetable$pattern)){
        names(relevant_table) <-gsub(substitutetable$pattern[rows], substitutetable$replacement[rows], names(relevant_table))
}


##########################################################
###### FIRST DATASET "relevant_table" IS DONE ############
##########################################################


###########################################
### Extract mean by subject & activity  ###
###########################################

## Calculate means by subject + activity
tidydf <- aggregate(. ~subject + activity, relevant_table, mean)

## Write tidydf to file
write.table(tidydf, "tidydata.txt", row.names = FALSE)
