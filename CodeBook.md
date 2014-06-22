Getting and Cleaning Data Project
=================================

## Introduction: Original Data Set

This assignment uses data from the <a href="http://archive.ics.uci.edu/ml/">UC Irvine Machine
Learning Repository</a>. 

* <b>Dataset</b>: <a href="https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip">Human Activity Recognition Using Smartphones</a> [60Mb]

* <b>Description</b>: A full description of the set is available <a href="http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones">here</a>.
	- "The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data."

## Loading the Data and Running the R Script

* The initial data sets are split in two: training and test data.

* The training data set contains 7352 rows and 561 columns, and the test data set contains 2947 rows and 561 columns.

* The R scripts `run_analysis.R` merges the two data sets and subsets the columns only to the mean and standard deviations of the measurements.

* The merged subsetted data contains 10299 rows and 81 columns (2 IDs and 79 variables). The IDs are subject and activity. This data set will be saved to a file named `samsung_tidydata.txt`.

* The variables included are:

	- "tbodyacc.mean.x", "tbodyacc.mean.y", "tbodyacc.mean.z" 
	- "tbodyacc.std.x", "tbodyacc.std.y", "tbodyacc.std.z" 
	- "tgravityacc.mean.x", "tgravityacc.mean.y", "tgravityacc.mean.z" 
	- "tgravityacc.std.x", "tgravityacc.std.y", "tgravityacc.std.z" 
	- "tbodyaccjerk.mean.x", "tbodyaccjerk.mean.y", "tbodyaccjerk.mean.z" 
	- "tbodyaccjerk.std.x", "tbodyaccjerk.std.y", "tbodyaccjerk.std.z" 
	- "tbodygyro.mean.x", "tbodygyro.mean.y", "tbodygyro.mean.z" 
	- "tbodygyro.std.x", "tbodygyro.std.y", "tbodygyro.std.z" 
	- "tbodygyrojerk.mean.x", "tbodygyrojerk.mean.y", "tbodygyrojerk.mean.z" 
	- "tbodygyrojerk.std.x", "tbodygyrojerk.std.y", "tbodygyrojerk.std.z" 
	- "tbodyaccmag.mean", 
	- "tbodyaccmag.std"
	- "tgravityaccmag.mean" 
	- "tgravityaccmag.std"
	- "tbodyaccjerkmag.mean"
	- "tbodyaccjerkmag.std" 
	- "tbodygyromag.mean"
	- "tbodygyromag.std"
	- "tbodygyrojerkmag.mean" 
	- "tbodygyrojerkmag.std"
	- "fbodyacc.mean.x", "fbodyacc.mean.y", "fbodyacc.mean.z" 
	- "fbodyacc.std.x", "fbodyacc.std.y", "fbodyacc.std.z" 
	- "fbodyacc.meanfreq.x", "fbodyacc.meanfreq.y", "fbodyacc.meanfreq.z" 
	- "fbodyaccjerk.mean.x", "fbodyaccjerk.mean.y", "fbodyaccjerk.mean.z" 
	- "fbodyaccjerk.std.x", "fbodyaccjerk.std.y", "fbodyaccjerk.std.z" 
	- "fbodyaccjerk.meanfreq.x", "fbodyaccjerk.meanfreq.y" 
	- "fbodyaccjerk.meanfreq.z"
	- "fbodygyro.mean.x", "fbodygyro.mean.y", "fbodygyro.mean.z" 
	- "fbodygyro.std.x", "fbodygyro.std.y", "fbodygyro.std.z" 
	- "fbodygyro.meanfreq.x", "fbodygyro.meanfreq.y", "fbodygyro.meanfreq.z" 
	- "fbodyaccmag.mean"
	- "fbodyaccmag.std"
	- "fbodyaccmag.meanfreq" 
	- "fbodybodyaccjerkmag.mean"
	- "fbodybodyaccjerkmag.std" 
	- "fbodybodyaccjerkmag.meanfreq" 
	- "fbodybodygyromag.mean" 
	- "fbodybodygyromag.std"
	- "fbodybodygyromag.meanfreq" 
	- "fbodybodygyrojerkmag.mean" 
	- "fbodybodygyrojerkmag.std" 
	- "fbodybodygyrojerkmag.meanfreq" 

* A second independent data set is also created from the tidy data set.

* This set contains the aggregate mean for each variable by subject by activity. This set is saved to the text file `samsung_avg_by_subject.txt`.

* This final set contains 180 rows and 81 columns.
