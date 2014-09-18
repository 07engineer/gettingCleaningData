The script run_analysis.R processes the wearable computing data set. It has hardcoded set working directory lines to folders named 'train' and 'test' where input files are located. 

The script run_analysis.R does the following:

-Reads in the data files from the wearable computing data set  
-Extracts only the measurements on the mean and standard deviation for each measurement.  
-Combines files for column labels and other information into a 'train' and a 'test' dataset  
-Merges the training and the test sets to create one data set, called 'alldata'.  
-Uses descriptive activity names to name the activities in the data set  
-Appropriately labels the data set with descriptive variable names.   
-creates a second, independent tidy data set with the average of each variable for each activity and each subject. This dataset, called aggBySubjectActivity, is written to "tidyTable.txt".  

The file 'CodeBook.md' defines the input files and data sets. 