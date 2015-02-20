---
title: "Codebook"
output: html_document
---

This is a codebook that describes the data and variables necessary for Johns Hopkins' Coursera course, "Getting and Cleaning Data," specifically for their course project.

###The Data

The data is from a Samsung Galaxy S smartphone regarding their accelerometer data.
The dataset was originally obtained from here. https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

A full description of the data can be found here. http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

###Description of the data

This description of the data is taken from the website above.

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.

###The Data in depth

This data contains numerous files. The one used in our analysis are.

1. X_test.txt, Y_test.txt, and subject_test.txt (Test data, activities, and subject labels)
2. X_train.txt, Y_train.txt, and subject_train.txt (Training data, activities, and subject labels)
3. activity_labels.txt (Specific labels for the activities) 
4. features.txt (Column names for the data)

###Processing details

In accordance with the project guidelines, I created a code to complete the following 5 requirements.

1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement. 
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names. 
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

Run the R code run_analysis.R, which will produce a clean and tidy data set that contains means for each column of either means or standard deviations for each subject for every activity. (180 rows).

I hope you enjoyed this codebook!

