## Install Required Packages
if (!require("reshape2")) install.packages("reshape2")
if (!require("dplyr")) install.packages("dplyr")

library(reshape2)
library(dplyr)

# Read in feature list
feature_file        = "./getdata-015-project/UCI HAR Dataset/features.txt"
feature     = read.table(feature_file)
col_names   = feature[,2]

# Read in activity labels
activity_labels_file = "./getdata-015-project/UCI HAR Dataset/activity_labels.txt"
activity_labels = read.table(activity_labels_file)

## TEST DATA ##
# Read in and combine the test data set
testdata_X          = "./getdata-015-project/UCI HAR Dataset/test/X_test.txt"
testdata_subject    = "./getdata-015-project/UCI HAR Dataset/test/subject_test.txt"
testdata_y          = "./getdata-015-project/UCI HAR Dataset/test/y_test.txt"

td_x        = read.table(testdata_X)
td_subject  = read.table(testdata_subject)
td_y        = read.table(testdata_y)

##   Use only descriptive activity names to name the activities
td_y_merged     = merge(td_y, activity_labels, by.x="V1", by.y="V1")
td_activity     = td_y_merged[2]

##   Appropriately label the data set with descriptive variable names
# Name test data columns
names(td_x) = col_names
names(td_subject) = "subject" 
names(td_activity) = "activity"

# Bind subject and activity columns to data
td = cbind(td_subject, td_activity, td_x)

## TRAINING DATA ##
# Read in and combine the training data set
trdata_X          = "./getdata-015-project/UCI HAR Dataset/train/X_train.txt"
trdata_subject    = "./getdata-015-project/UCI HAR Dataset/train/subject_train.txt"
trdata_y          = "./getdata-015-project/UCI HAR Dataset/train/y_train.txt"

tr_x        = read.table(trdata_X)
tr_subject  = read.table(trdata_subject)
tr_y        = read.table(trdata_y)

##   Use only descriptive activity names to name the activities
tr_y_merged     = merge(tr_y, activity_labels, by.x="V1", by.y="V1")
tr_activity     = tr_y_merged[2]

##   Appropriately label the data set with descriptive variable names
# Name training data columns
names(tr_x) = col_names
names(tr_subject) = "subject" 
names(tr_activity) = "activity"

# Bind subject and activity columns to data
tr = cbind(tr_subject, tr_activity, tr_x)

## Extract only the mean and std dev for each measurement
# Find all columns that contain mean() or std()
columns_to_keep = sort(c(1, 2, grep("std()", names(td)), grep("mean()", names(td))))
colnames_to_keep = names(td)[sort(c(grep("std()", names(td)), grep("mean()", names(td))))]

# Merge both data sets together
data = rbind(td[, columns_to_keep], tr[, columns_to_keep])

##    Create a new, independent and tidy data set with the mean of each variable
##    for each activity and each subject

melted_data = melt(data, id=c("subject", "activity"), measure.vars=colnames_to_keep)
grouped_data = group_by(melted_data, subject, activity, variable)
summary = summarize(grouped_data, average = mean(value))

write.table(summary, file = "./getdata-015-project/tidy_data_output.txt", row.names = FALSE)