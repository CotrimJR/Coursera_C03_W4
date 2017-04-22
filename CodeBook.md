#CodeBook


## Accelerometer and gyroscope signals

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

The set of variables that were estimated from these signals are:

- mean(): Mean value
- std(): Standard deviation


In the original dataset there are more variables avaliables, but only the two above were considered in this project.

The original codebook is avaliable in the **UCI HAR Dataset**.

The transformantions necessary to generate the tidy datasets are described in the **README.md** file.


## Variables of dataset HAR_dataset.csv 

The generated dataset contains the following variables:

|Variable|Description|
|--------------------|-------------------------------------------------------------|
|subjectID|Identification of each subject who performed the activity for each window sample. Its range is from 1 to 30.|
|obsType|Identifies the observation type: TEST or TRAIN.|
|activity|Identifies the activity performed: WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING.|
|tBodyAcc-mean()-X|Check "Accelerometer and gyroscope signals"|
|tBodyAcc-mean()-Y|Check "Accelerometer and gyroscope signals"|
|tBodyAcc-mean()-Z|Check "Accelerometer and gyroscope signals"|
|tBodyAcc-std()-X|Check "Accelerometer and gyroscope signals"|
|tBodyAcc-std()-Y|Check "Accelerometer and gyroscope signals"|
|tBodyAcc-std()-Z|Check "Accelerometer and gyroscope signals"|
|tGravityAcc-mean()-X|Check "Accelerometer and gyroscope signals"|
|tGravityAcc-mean()-Y|Check "Accelerometer and gyroscope signals"|
|tGravityAcc-mean()-Z|Check "Accelerometer and gyroscope signals"|
|tGravityAcc-std()-X|Check "Accelerometer and gyroscope signals"|
|tGravityAcc-std()-Y|Check "Accelerometer and gyroscope signals"|
|tGravityAcc-std()-Z|Check "Accelerometer and gyroscope signals"|
|tBodyAccJerk-mean()-X|Check "Accelerometer and gyroscope signals"|
|tBodyAccJerk-mean()-Y|Check "Accelerometer and gyroscope signals"|
|tBodyAccJerk-mean()-Z|Check "Accelerometer and gyroscope signals"|
|tBodyAccJerk-std()-X|Check "Accelerometer and gyroscope signals"|
|tBodyAccJerk-std()-Y|Check "Accelerometer and gyroscope signals"|
|tBodyAccJerk-std()-Z|Check "Accelerometer and gyroscope signals"|
|tBodyGyro-mean()-X|Check "Accelerometer and gyroscope signals"|
|tBodyGyro-mean()-Y|Check "Accelerometer and gyroscope signals"|
|tBodyGyro-mean()-Z|Check "Accelerometer and gyroscope signals"|
|tBodyGyro-std()-X|Check "Accelerometer and gyroscope signals"|
|tBodyGyro-std()-Y|Check "Accelerometer and gyroscope signals"|
|tBodyGyro-std()-Z|Check "Accelerometer and gyroscope signals"|
|tBodyGyroJerk-mean()-X|Check "Accelerometer and gyroscope signals"|
|tBodyGyroJerk-mean()-Y|Check "Accelerometer and gyroscope signals"|
|tBodyGyroJerk-mean()-Z|Check "Accelerometer and gyroscope signals"|
|tBodyGyroJerk-std()-X|Check "Accelerometer and gyroscope signals"|
|tBodyGyroJerk-std()-Y|Check "Accelerometer and gyroscope signals"|
|tBodyGyroJerk-std()-Z|Check "Accelerometer and gyroscope signals"|
|tBodyAccMag-mean()|Check "Accelerometer and gyroscope signals"|
|tBodyAccMag-std()|Check "Accelerometer and gyroscope signals"|
|tGravityAccMag-mean()|Check "Accelerometer and gyroscope signals"|
|tGravityAccMag-std()|Check "Accelerometer and gyroscope signals"|
|tBodyAccJerkMag-mean()|Check "Accelerometer and gyroscope signals"|
|tBodyAccJerkMag-std()|Check "Accelerometer and gyroscope signals"|
|tBodyGyroMag-mean()|Check "Accelerometer and gyroscope signals"|
|tBodyGyroMag-std()|Check "Accelerometer and gyroscope signals"|
|tBodyGyroJerkMag-mean()|Check "Accelerometer and gyroscope signals"|
|tBodyGyroJerkMag-std()|Check "Accelerometer and gyroscope signals"|
|fBodyAcc-mean()-X|Check "Accelerometer and gyroscope signals"|
|fBodyAcc-mean()-Y|Check "Accelerometer and gyroscope signals"|
|fBodyAcc-mean()-Z|Check "Accelerometer and gyroscope signals"|
|fBodyAcc-std()-X|Check "Accelerometer and gyroscope signals"|
|fBodyAcc-std()-Y|Check "Accelerometer and gyroscope signals"|
|fBodyAcc-std()-Z|Check "Accelerometer and gyroscope signals"|
|fBodyAccJerk-mean()-X|Check "Accelerometer and gyroscope signals"|
|fBodyAccJerk-mean()-Y|Check "Accelerometer and gyroscope signals"|
|fBodyAccJerk-mean()-Z|Check "Accelerometer and gyroscope signals"|
|fBodyAccJerk-std()-X|Check "Accelerometer and gyroscope signals"|
|fBodyAccJerk-std()-Y|Check "Accelerometer and gyroscope signals"|
|fBodyAccJerk-std()-Z|Check "Accelerometer and gyroscope signals"|
|fBodyGyro-mean()-X|Check "Accelerometer and gyroscope signals"|
|fBodyGyro-mean()-Y|Check "Accelerometer and gyroscope signals"|
|fBodyGyro-mean()-Z|Check "Accelerometer and gyroscope signals"|
|fBodyGyro-std()-X|Check "Accelerometer and gyroscope signals"|
|fBodyGyro-std()-Y|Check "Accelerometer and gyroscope signals"|
|fBodyGyro-std()-Z|Check "Accelerometer and gyroscope signals"|
|fBodyAccMag-mean()|Check "Accelerometer and gyroscope signals"|
|fBodyAccMag-std()|Check "Accelerometer and gyroscope signals"|
|fBodyBodyAccJerkMag-mean()|Check "Accelerometer and gyroscope signals"|
|fBodyBodyAccJerkMag-std()|Check "Accelerometer and gyroscope signals"|
|fBodyBodyGyroMag-mean()|Check "Accelerometer and gyroscope signals"|
|fBodyBodyGyroMag-std()|Check "Accelerometer and gyroscope signals"|
|fBodyBodyGyroJerkMag-mean()|Check "Accelerometer and gyroscope signals"|
|fBodyBodyGyroJerkMag-std()|Check "Accelerometer and gyroscope signals"|

## Variables of dataset HAR_dataset_avg.csv

Apart from the variable **obsType**, all the other variables are contained in this new dataset.

The numeric variables are summarized by the average value grouped by **objectID** and **activity**.