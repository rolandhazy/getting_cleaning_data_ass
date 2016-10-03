#download and unzip file
library(downloader)
url = "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(url, "dataset.zip")
unzip("dataset.zip")

##############################################
#load in variable names
feature_names = scan("./UCI HAR Dataset/features.txt", "character")
feature_names = feature_names[seq(2, 1122, by = 2)]

#clean feature names
feature_names = gsub("\\(\\)", "" ,feature_names)

#load activity labels
activity_labels = scan("./UCI HAR Dataset/activity_labels.txt", "character")
activity_labels = activity_labels[seq(2,12, by = 2)]

##############################################
#load readr package for faster reading
library(readr)

#load train set
train_set = read_fwf("./UCI HAR Dataset/train/X_train.txt", 
                     fwf_widths(c(rep(16, 561))))

#name train variables
names(train_set) = feature_names

#load test set
test_set = read_fwf("./UCI HAR Dataset/test/X_test.txt", 
                    fwf_widths(c(rep(16, 561))))

#name test variables
names(test_set) = feature_names

#merge train and test set
full_set = rbind(train_set, test_set)

#create logical vector containing 'mean' or 'std'
mean_std = grepl("mean-|std-", feature_names)

#subset full_set
full_set = full_set[, mean_std]
#####################################################
#load train subject list
train_subject = read_lines("./UCI HAR Dataset/train/subject_train.txt")

#load test subject list
test_subject = read_lines("./UCI HAR Dataset/test/subject_test.txt")

#merge subject lists
subject = c(train_subject, test_subject)

#################################
#load labels
train_labels = scan("./UCI HAR Dataset/train/Y_train.txt")

#load labels
test_labels = scan("./UCI HAR Dataset/test/Y_test.txt")

#merge labels
labels = c(train_labels, test_labels)
labels = factor(labels, labels = c(activity_labels))
##########################
#create first tidy set
tidy_set_01 = cbind(subject, full_set, labels)

##############################
#create second aggregated tidy set
tidy_set_02 = aggregate(tidy_set_01[, -c(1, 50)], 
                        list(subject = tidy_set_01$subject, labels = tidy_set_01$labels), mean)

#write out tidy set2
write.table(tidy_set_02, "tidy_set_02.txt", row.names = F)