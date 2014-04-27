
### Description of MeansByActivityAndSubject.txt
Dataset in MeansByActivityAndSubject.txt contains resulting dataset according to assignment for "Getting and Cleaning Data" course
by Jeff Leek, Roger D. Peng, Brian Caffo, PhD

Dataset contains averages of selected features from original UCI HAR Dataset grouped by Activity and Subject

There are 69 columns in this dataset.
I decided to keep ActivityCode AND Activity in this dataset, as i think that it's much more convenient to filter data with numeric codes than with string labels.
There are 180 rows in this dataset.

**Description of the columns:**

1. ActivityCode - INTEGER, range=1:6, represent recognised activity
2. Activity     - CHARACTER, human-friendly label of activity 
3. Subject      - INTEGER, range=1:30, subject who performed the activity for each window sample

Following columns 4-69 are averages of corresponding measurements from original UCI HAR Dataset.
Features are normalized and bounded within [-1,1].
They are all FLOAT type.
For more information about this variable please refer to original dataset files 'README.txt' and 'features_info.txt'

tBodyAcc-mean()-X
tBodyAcc-mean()-Y
tBodyAcc-mean()-Z

tGravityAcc-mean()-X
tGravityAcc-mean()-Y
tGravityAcc-mean()-Z

tBodyAccJerk-mean()-X
tBodyAccJerk-mean()-Y
tBodyAccJerk-mean()-Z

tBodyGyro-mean()-X
tBodyGyro-mean()-Y
tBodyGyro-mean()-Z

tBodyGyroJerk-mean()-X
tBodyGyroJerk-mean()-Y
tBodyGyroJerk-mean()-Z

tBodyAccMag-mean()
tGravityAccMag-mean()
tBodyAccJerkMag-mean()
tBodyGyroMag-mean()
tBodyGyroJerkMag-mean()

fBodyAcc-mean()-X
fBodyAcc-mean()-Y
fBodyAcc-mean()-Z

fBodyAccJerk-mean()-X
fBodyAccJerk-mean()-Y
fBodyAccJerk-mean()-Z

fBodyGyro-mean()-X
fBodyGyro-mean()-Y
fBodyGyro-mean()-Z

fBodyAccMag-mean()
fBodyBodyAccJerkMag-mean()
fBodyBodyGyroMag-mean()
fBodyBodyGyroJerkMag-mean()

tBodyAcc-std()-X
tBodyAcc-std()-Y
tBodyAcc-std()-Z

tGravityAcc-std()-X
tGravityAcc-std()-Y
tGravityAcc-std()-Z

tBodyAccJerk-std()-X
tBodyAccJerk-std()-Y
tBodyAccJerk-std()-Z

tBodyGyro-std()-X
tBodyGyro-std()-Y
tBodyGyro-std()-Z

tBodyGyroJerk-std()-X
tBodyGyroJerk-std()-Y
tBodyGyroJerk-std()-Z

tBodyAccMag-std()
tGravityAccMag-std()
tBodyAccJerkMag-std()
tBodyGyroMag-std()
tBodyGyroJerkMag-std()

fBodyAcc-std()-X
fBodyAcc-std()-Y
fBodyAcc-std()-Z

fBodyAccJerk-std()-X
fBodyAccJerk-std()-Y
fBodyAccJerk-std()-Z

fBodyGyro-std()-X
fBodyGyro-std()-Y
fBodyGyro-std()-Z

fBodyAccMag-std()
fBodyBodyAccJerkMag-std()
fBodyBodyGyroMag-std()
fBodyBodyGyroJerkMag-std()