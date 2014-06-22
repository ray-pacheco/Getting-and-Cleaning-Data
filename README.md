Getting and Cleaning Data Project
=================================

## Instructions

* Download and unzip the <a href="https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip">source file</a>.

* In R be sure to set the working directory to the unzipped file location.

* Run the R script run_analysis.R, this scipt will do the following:

	1. Merges the training and test sets to create one data set.
		- X_train, y_train and subject_train are merged with their respective test sets.
		
	2. Extracts only the measurements on the mean and standard deviation for each measurement.
		- The merged X-file is subseted to only columns with names including -mean or -std.
		
	3. Uses descriptive activity names to name the activities in the data set.
		- The activity_labels.txt is read in and merged with the data set.
		
	4. Appropriately labels the data set with descriptive variable names.
		- The column names are cleaned and merged from the y-file.
		
	5. Creates a second, independent tidy data set with the average of each variable for each activity and each subject.
		- Two text files are created: the cleaned file is written to samsung_tidydata.txt, and the melted data set with the average of each variable by activity by subject is written to samsung_avg_by_subject.txt.






