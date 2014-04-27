# This script does the following:
# We assume, that data is already downloaded and unpacked into directory, 
# the script is in the same directory with the data.

# it takes 'directory' as an argument

run_analysis <- function(dir="./") {
    # read train and test data, resulting activity and subject info
    x_train <- read.table(paste0(dir,"train/X_train.txt"))
    y_train <- read.table(paste0(dir,"train/y_train.txt"))
    subject_train <- read.table(paste0(dir,"train/subject_train.txt"))
    
    x_test  <- read.table(paste0(dir,"test/X_test.txt"))
    y_test  <- read.table(paste0(dir,"test/y_test.txt"))
    subject_test <- read.table(paste0(dir,"test/subject_test.txt"))    

    # read features names and activity lables
    features <- read.table(paste0(dir,"features.txt"))
    activity_labels <- read.table(paste0(dir,"activity_labels.txt"))
    
    # merging datasets
    x_all <- rbind(x_train,x_test)
    y_all <- rbind(y_train,y_test)
    subject_all <- rbind(subject_train,subject_test)    
    
    # getting col names as factors from data.table
    features <- features[,2] 
    
    # adding column names
    colnames(x_all) <- features
    colnames(y_all) <- c("Activity")
    colnames(subject_all)  <- c("Subject")

    # extract required columns - containing mean() and std() - and put it into 'res'
    id_mean_std <- c(grep("mean[(]",features),grep("std",features))
    res <- x_all[id_mean_std]
    
    # use aggregate function to apply 'mean' to subsets
    #Description from documentation:
    # Splits the data into subsets, computes summary statistics for each, 
    # and returns the result in a convenient form.
    # x - an R object.
    # by - a list of grouping elements, each as long as the variables in the data frame x. The elements are coerced to factors before use.
    # FUN - a function to compute the summary statistics which can be applied to all data subsets.
    
    new_tidy <- aggregate(x=res,by=list(y_all[,1],subject_all[,1]),FUN="mean")

    # now we have new dataset with columns:  1 - activity code, 2 - subject, 3-68 - data variables
    
    # so i have to replace activity codes with activity names
    # i'm using column index instead of column names, as column names like "Group.1" assigned automaticly by function and may be changed in future versions
    # so i'm merging activity labels with resulting table by activity id (column 1 in activity_labels and column 1 in new_tidy dataset)
    new_tidy <- merge(activity_labels,new_tidy,by.x=1,by.y=1)
    
    # properly name columns:
    names(new_tidy)[1:3] <- c("ActivityCode","Activity","Subject")

    # write new dataset into provided source data directory
    write.table(new_tidy,file=paste0(dir,"MeansByActivityAndSubject.txt"),row.names=F,sep=",")
    
}



