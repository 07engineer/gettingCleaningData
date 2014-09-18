# Code for getting & cleaning data project
# By 07Engineer
# September 18, 2014

##########################
#First, read in data files
###########################

setwd("~/coursera/getting and cleaning data/course project")
rm(list = ls())
activity_labels <- read.table("activity_labels.txt")
features <- read.table("features.txt")

setwd("~/coursera/getting and cleaning data/course project/test")
X_test <- read.table("X_test.txt")
y_test <- read.table("y_test.txt")
subject_test <- read.table("subject_test.txt")

setwd("~/coursera/getting and cleaning data/course project/train")
X_train <- read.table("X_train.txt")
y_train <- read.table("y_train.txt")
subject_train <- read.table("subject_train.txt")

setwd("~/coursera/getting and cleaning data/course project")

#######################
# Combine data 
#######################

#Use grep() function to search for "mean()" or "std()" to select mean & std columns.
MeanOrStd <- grep("mean\\(|std\\(", as.character(features[,2]))

#Prepare train data
train <- X_train
colnames(train) <- features[,2]
train <- train[,MeanOrStd]
train$subject <- subject_train[,1]
label <- as.factor(y_train[,1])
levels(label) <- as.character(activity_labels[,2])
train$label <- label

#Prepare test data
test <- X_test
colnames(test) <- features[,2]
test <- test[,MeanOrStd]
test$subject <- subject_test[,1]
label <- as.factor(y_test[,1])
levels(label) <- as.character(activity_labels[,2])
test$label <- label

alldata <- rbind(train, test)

#########################
# Aggregate to tidy table 
#########################

aggBySubjectActivity <- aggregate(.~subject + label, alldata, mean)
tidyTable <- write.table(aggBySubjectActivity, file = "tidyTable.txt", row.name=FALSE )
