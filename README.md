---
title: "README"
output: html_document
---

This ia a README file for Johns Hopkins' Coursera course, "Getting and Cleaning Data," specifically for their course project.

###Project Details
The students were told to complete 5 tasks.

Use the data given (https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip) to
1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement. 
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names. 
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

###Replicating my results

1. Download the source data.
2. Download the code run_analysis.R and place it in your working directory.
3. Run run_analysis.R which will generate a file titled 'GetData_Proj1.txt'.

run_analysis.R requires the package 'reshape2'.
