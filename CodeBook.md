---
Title: Getting and Cleaning Data - Course Project Code Book
Author: Sean Miller	
Date: 06/17/2015
---

### Project Description
The purpose of this project is to take the data https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip combine the test and training data sets and then for all mean or std deviation of a measurement take the average of that value for each subject, activity pair.

### Variables in Script Output
1. subject - The ID of volunteer performing the current activity
	* There are 30 participants, ID 1 through 30.

2. activity - The name of the activity being performed:

	* WALKING
	* WALKING_UPSTAIRS
	* WALKING_DOWNSTAIRS
	* SITTING
	* STANDING
	* LAYING
	
3. variable - The name of the measurement being taken during the activity
	* tBodyAcc-mean()-X
	* tBodyAcc-mean()-Y
	* tBodyAcc-mean()-Z
	* tBodyAcc-std()-X               
	* tBodyAcc-std()-Y
	* tBodyAcc-std()-Z
	* tGravityAcc-mean()-X
	* tGravityAcc-mean()-Y
	* tGravityAcc-mean()-Z
	* tGravityAcc-std()-X
	* tGravityAcc-std()-Y
	* tGravityAcc-std()-Z
	* tBodyAccJerk-mean()-X
	* tBodyAccJerk-mean()-Y
	* tBodyAccJerk-mean()-Z
	* tBodyAccJerk-std()-X
	* tBodyAccJerk-std()-Y
	* tBodyAccJerk-std()-Z
	* tBodyGyro-mean()-X
	* tBodyGyro-mean()-Y
	* tBodyGyro-mean()-Z
	* tBodyGyro-std()-X
	* tBodyGyro-std()-Y
	* tBodyGyro-std()-Z
	* tBodyGyroJerk-mean()-X
	* tBodyGyroJerk-mean()-Y
	* tBodyGyroJerk-mean()-Z
	* tBodyGyroJerk-std()-X
	* tBodyGyroJerk-std()-Y
	* tBodyGyroJerk-std()-Z
	* tBodyAccMag-mean()             
	* tBodyAccMag-std()             
	* tGravityAccMag-mean()           
	* tGravityAccMag-std()
	* tBodyAccJerkMag-mean()
	* tBodyAccJerkMag-std()          
	* tBodyGyroMag-mean()             
	* tBodyGyroMag-std()
	* tBodyGyroJerkMag-mean()
	* tBodyGyroJerkMag-std()         
	* fBodyAcc-mean()-X
	* fBodyAcc-mean()-Y
	* fBodyAcc-mean()-Z
	* fBodyAcc-std()-X           
	* fBodyAcc-std()-Y
	* fBodyAcc-std()-Z
	* fBodyAcc-meanFreq()-X
	* fBodyAcc-meanFreq()-Y
	* fBodyAcc-meanFreq()-Z
	* fBodyAccJerk-mean()-X
	* fBodyAccJerk-mean()-Y
	* fBodyAccJerk-mean()-Z
	* fBodyAccJerk-std()-X
	* fBodyAccJerk-std()-Y
	* fBodyAccJerk-std()-Z
	* fBodyAccJerk-meanFreq()-X
	* fBodyAccJerk-meanFreq()-Y
	* fBodyAccJerk-meanFreq()-Z
	* fBodyGyro-mean()-X
	* fBodyGyro-mean()-Y
	* fBodyGyro-mean()-Z
	* fBodyGyro-std()-X
	* fBodyGyro-std()-Y
	* fBodyGyro-std()-Z
	* fBodyGyro-meanFreq()-X
	* fBodyGyro-meanFreq()-Y
	* fBodyGyro-meanFreq()-Z
	* fBodyAccMag-mean()             
	* fBodyAccMag-std()               
	* fBodyAccMag-meanFreq()          
	* fBodyBodyAccJerkMag-mean()      
	* fBodyBodyAccJerkMag-std()      
	* fBodyBodyAccJerkMag-meanFreq()  
	* fBodyBodyGyroMag-mean()         
	* fBodyBodyGyroMag-std()          
	* fBodyBodyGyroMag-meanFreq()    
	* fBodyBodyGyroJerkMag-mean()     
	* fBodyBodyGyroJerkMag-std()      
	* fBodyBodyGyroJerkMag-meanFreq()
	
4. value - The average value of the measurement for a given subject during a given activity