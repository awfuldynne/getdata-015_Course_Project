# Getting and Cleaning Data - Course Project
#### Sean Miller

### Required Packages
* reshape2
* dplyr

### Script Preparation
* run_analysis.R assumes that the contents of the zipfile located at https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip has been unpacked in your current working directory.
* If either reshape2 or dplyr packages are not installed, run_analysis.R will attempt to install them.

### Running the Script
1. 

### Reading the Data
Data can be read in R with the following command:
* read.table("./getdata-015-project/tidy_data_output.txt", header = TRUE)