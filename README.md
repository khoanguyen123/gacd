## Getting and Cleaning Data in R

### Input data
The experiments used embedded accelerometer and gyroscope in Samsung Galaxy smartphone to measure acceleration and angular velocity while a participant performed various activities 
(WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING). There were 30 volunteers (i.e. subjects) for the experiments.

The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data
and 30% the test data

The dataset was downloaded and extracted. Following is the data structure relative to this file's directory:

- 'README.txt'

- 'features_info.txt': Shows information about the variables used on the feature vector.

- 'features.txt': List of all features.

- 'activity_labels.txt': Links the class labels with their activity name.


- 'train/X_train.txt': Training set.

- 'train/y_train.txt': Training labels.

- 'train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 


- 'test/X_test.txt': Test set.

- 'test/y_test.txt': Test labels.

- 'test/subject_test.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 


There are more files, but we don't use them in this assignment.


### Script description

The "run_analysis.R" performs the following tasks:

1. Read TEST dataset

  1. Read "X_test.txt". Each row is an observation, however the subject and activity columns are missing
  
  2. So, need to read "subject_test.txt". Each row identifies a subject whose observation is in the matching row number in "X_test.txt"
  
  3. Similarly, "y_test.txt" identifies an activity by number (e.g. 1 = WALKING, 2 = WALKING_UPSTAIRS, ...). 
  So, we need to map them to more descriptive names using "activity_labels.txt"
  
  4. Combine them all (via cbind) into a single TEST dataset
  
2. Do the same with TRAINING dataset

3. Merge TEST and TRAINING dataset created in step 1 and 2 into one data frame via rbind

4. Extract only the measurements on the mean and standard deviation for each row using select{dplyr} function on all columns matching "std" or "mean" 

5. Create a new dataset (hopefully tidy) with the average of each variable (i.e. each of the means and stds above) per activity per participant

6. The new dataset is written to a file called "result.txt" in current directory




