================================================================================================
The dada for this course project come from Human Activity Recognition Using Smartphones Dataset
Version 1.0.It is require  to write an R code called run_analysis.R with five steps following
======
 step1: merge the training and test sets to create one data set in variable named "daraset""
====== 
 step2:extracts only the measurements on the mean and standard deviation for each measument.We have used the grep function to extrat measurements of mean and standard deviation
====== 
 step3:uses descriptive activity names to name the activities in the data set
====== 
 step4:appropriately labels the data set with descriptive variable names.We have used "colnames()" function to labels the data set
====== 
 step5:creates a second, independent tidy data set with the average of each variable for each activity and each suject.We have used the split function to da this easier
================================================================================================= 

For each step in run_analysis the description of variables, the data, and any transformations or work to obtain a tidy data set are explained in CodeBook.md
See CodeBook for more informations.
=================================================================================================
The fifth step creates a independent tidy data set in the file name "tidy_dataset.txt".
The tidy_dataset contain two things:
- the average of each variable for each activity
-the average of each variable for each subjet.

