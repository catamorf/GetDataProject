### run_analysis by jamesik

This repo contains the run_analisys.R file with run_analisys() function.

**Function:** run_analisys()

**Description:**
Takes data from UCI HAR Dataset and creates new, independent tidy data set with the average of each variable for each activity and each subject. 
We assume, that dataset is already downloaded and unzipped into some folder (directory)
Also we assume, that filenames are unchanged and directory structures remains as from original assignment.
I decided not to implement testing, if files exists and other tests, required for real project, as this is not the goal of this course.

**Usage:**
run_analisys(dir='./')

**Arguments:**
dir  	character string, path to the directory with UCI HAR Dataset. By default function will look for data files in current directory

**Details:**
According to the assignment for "Getting and Cleaning Data Project" this script does following:

1. Takes training and test sets of preprocessed data and merge it.

2. Labels all variables with descriptive names (from features.txt).

3. Extracts only the measurements on the mean and standard deviation for each measurement.

4. Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 

5. Lables activities with descriptive names (from activity_labels.txt).

6. Writes new tidy dataset into MeansByActivityAndSubject.txt file in directory by parameter 'dir’.


