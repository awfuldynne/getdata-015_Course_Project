# Getting and Cleaning Data - Course Project
#### Sean Miller

#### Required Packages
* reshape2
* dplyr

#### Summary
* run_analysis.R combines the test and training data sets from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip and creates a tidy data set of the average of each mean or std deviation of a variable for each subject, activity pair.

#### Script Preparation
* run_analysis.R assumes that the contents of the zipfile linked above have been unpacked in your current working directory.
* If either the reshape2 or dplyr package isn't installed, run_analysis.R will attempt to install them.

#### What the Script Does
1. Each set of data (test, training) is made up of three parts
	* X: The values of each measurement
	* subject: Which subject performed the measurement
	* activity/y: The activity during which the measurement was taken
2. The variable names are taken from the file features.txt and mapped to the corresponding column of X (e.g. tBodyAcc-mean()-X)
3. Subject, activity/y and X are then column bound together to build the respective data set.
	* During this step, the individual data set is joined to the list of activities from the file activity_labels.txt.
4. After both the test and training sets of data have been assembled, the script finds all column names with either the string "std()" or "mean()" in them.
5. The test and training data sets are then row bound together, while reducing the columns to the list of columns created in step 4.
6. The data set is then pivoted with the melt function into the form (subject, activity, variable, value), where variable maps to one of the variable names of either a mean or std deviation of a measurement and value is the value of that measurement.
7. The data is grouped by (subject, activity, variable) and summarized such that the value is the mean of that variable for that subject and activity.
8. The output of the data set is written to "./tidy_data_output.txt" and loaded via View in R.

#### Reading the Data
Data can be read in R with the following command:
* read.table("./tidy_data_output.txt", header = TRUE)