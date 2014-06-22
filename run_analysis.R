## Merges the training and the test sets to create one data set.
## Extracts only the measurements on the mean and standard deviation for each measurement. 
## Uses descriptive activity names to name the activities in the data set
## Appropriately labels the data set with descriptive activity names. 
## Creates a second, independent tidy data set with the average of each variable for each activity and each subject

## assuming that the current directory contains the UCI HAR Dataset
## load the test and train sets and merge them
x_train <- read.table("train/X_train.txt", header=FALSE)
x_test <- read.table("test/X_test.txt", header=FALSE)
x_merge <- rbind(x_train, x_test)

## load the test and train lables and merge them.
y_train <- read.table("train/y_train.txt", header=FALSE)
y_test <- read.table("test/y_test.txt", header=FALSE)
y_merge <- rbind(y_train, y_test)

## load the test and train subjects and merge them.
s_train <- read.table("train/subject_train.txt", header=FALSE)
s_test <- read.table("test/subject_test.txt", header=FALSE)
s_merge <- rbind(s_train, s_test)

## load the features and subset to only the measurements of mean and std
all_features <- read.table("features.txt", header=FALSE)
mean_std_index <- grep("-mean|-std", all_features[,2])
measure_features <- all_features[mean_std_index,]

## remove special characters from the names, make them R friendly
measure_features[,2] <- gsub("\\(|\\)","", measure_features[,2])
measure_features[,2] <- gsub("-", ".", measure_features[,2])
measure_features[,2] <- tolower(measure_features[,2])

## subset x_train to only the mean and std measurements
x_merge <- x_merge[,mean_std_index]

## add the column labels to x_merge
x_names <- measure_features[,2]
names(x_merge) <- x_names

## add descriptive activty names to the data set
activities <- read.table("activity_labels.txt", header=FALSE)
y_merge[,1] <- activities[y_merge[,1],2]
names(y_merge) <- "activity"
names(s_merge) <- "subject"

## create the tidy data set and write to txt file
tidyset <- cbind(s_merge, y_merge, x_merge)
write.table(tidyset, "samsung_tidydata.txt")

## Creates a second, independent tidy data set with the average of each variable for each activity and each subject
library(reshape2)
variables <- names(tidyset)
dataMelt <- melt(tidyset, id=c("subject", "activity"), measure.var=x_names)
meltData <- dcast(dataMelt, subject + activity ~ variable, mean)
write.table(meltData, "samsung_avg_by_subject.txt")