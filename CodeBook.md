#Code Book for Assignment

for tidy_set_01 and tidy_set_02:
- Variables from original set but filtered to only contain the mean and standard deviation of the measurements (from 'features_info.txt'). These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.
  - tBodyAcc-mean-X
  - tBodyAcc-mean-Y
  - tBodyAcc-mean-Z
  - tBodyAcc-std-X
  - tBodyAcc-std-Y
  - tBodyAcc-std-Z
  - tGravityAcc-mean-X
  - tGravityAcc-mean-Y
  - tGravityAcc-mean-Z
  - tGravityAcc-std-X
  - tGravityAcc-std-Y
  - tGravityAcc-std-Z
  - tBodyAccJerk-mean-X
  - tBodyAccJerk-mean-Y
  - tBodyAccJerk-mean-Z
  - tBodyAccJerk-std-X
  - tBodyAccJerk-std-Y
  - tBodyAccJerk-std-Z
  - tBodyGyro-mean-X
  - tBodyGyro-mean-Y
  - tBodyGyro-mean-Z
  - tBodyGyro-std-X
  - tBodyGyro-std-Y
  - tBodyGyro-std-Z
  - tBodyGyroJerk-mean-X
  - tBodyGyroJerk-mean-Y
  - tBodyGyroJerk-mean-Z
  - tBodyGyroJerk-std-X
  - tBodyGyroJerk-std-Y
  - tBodyGyroJerk-std-Z
  - fBodyAcc-mean-X
  - fBodyAcc-mean-Y
  - fBodyAcc-mean-Z
  - fBodyAcc-std-X
  - fBodyAcc-std-Y
  - fBodyAcc-std-Z

- Subject is a factor variable to connect the measurement to one individual (from 1 to 30)
- Labels is a factor variable to connect the measurement to on activity (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, 
SITTING, STANDING, LAYING)
