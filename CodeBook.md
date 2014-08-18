================================================================================================
Above all we must define a new directory pointed to "getdata ProjectFiles-HAR-UCI Dataset" (unzip getdata-ProjectFiles UCI-file Dataset.zip HAR)
####################################### Step1 ###################################################
-y is a variable that contains the names of files with "training" in UCI Dataset HAR. 
These files are among 12.The last three are not in Inertial Signals are those interressent remenber that we we want to merging training (not train) and test set 
-x such that y the difference that In contains the names of files with "test" 
-Files To merging x are in [10], x [11], x [12], y [10], y [11] and y [12] 
-test_files and train_files are files that merging test and training respectively in defined order in the R code 
-test_files train_files and data tables are merging of training and test set 
-dataset is the data file requested.

####################################### Step2 ###################################################
-feature_files file is a data table containing the variables 
-d1 and d2 are vectors of indices of variables with mean and std respectively in feature_files 
-extract is a file containing variables with mean and std.

####################################### Step3 ###################################################
-activity_files's is a database activity_labels.txt 
-the loop "for" is use to replace the codes names in dataset.

####################################### Step4 ###################################################
-Label the columns with feature_files and completes the last two names with activities and subjet 
following the order of colones defined in the dataset.

####################################### Step5 ###################################################
-average_activities calculates averages by variable activity while deleted the last two colones which is most needed 
-average_subject same as for average_activities 
-The tidy data set is in tidy_dataset.txt
You can read this on R. 
