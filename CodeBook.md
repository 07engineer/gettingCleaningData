The input files for this data set are those described in the wearable computing dataset. 
Their names are the same as the filename, and are explained in their readme file.  

- 'features_info.txt': Shows information about the variables used on the feature vector.
- 'features.txt': List of all features.
- 'activity_labels.txt': Links the class labels with their activity name.
- 'train/X_train.txt': Training set.
- 'train/y_train.txt': Training labels.
- 'test/X_test.txt': Test set.
- 'test/y_test.txt': Test labels, renamed to activity labels
- 'train/subject_train.txt' : the subject (1:30)

The dataframes created in the code include:   
-test: the test data, with new column names and columns for subject & activity label  
-train: the train data, with new column names and columns for subject & activity label   
-alldata: the combined testing & training data  
-aggBySubjectActivity: the mean data aggregated by subject and activity label  
