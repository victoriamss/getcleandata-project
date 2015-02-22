#Code Book
##Average of Measurements on Human Activity Recognition on Smartphones

This code book refers to a dataset created in the context of the project assessment for the "Getting and Cleaning Data" course, on Coursera.

The dataset created for the project resulted from transformations performed on the "Human Activity Recognition on Smartphones" [1]. More information about this dataset can be found in http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones.

###On the original dataset

The mentioned dataset was based on experiments carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, its authors captured 3-axial linear acceleration and 3-axial angular velocity.

The original database was then analyzed according to certain features. In this transformed functions, I have kept the variable names for clarity. The features selected at the original experiment come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

tBodyAcc-XYZ
tGravityAcc-XYZ
tBodyAccJerk-XYZ
tBodyGyro-XYZ
tBodyGyroJerk-XYZ
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAcc-XYZ
fBodyAccJerk-XYZ
fBodyGyro-XYZ
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag

The original dataset contains variables which were estimated from the signals above, such as minimum value, maximum value, mean and standard deviation.

###Transformations for this project

For this project, we were asked to keep only the mean and standard deviation for each of the signals collected. This led to the creation of a new dataset, with 66 variables concerning 33 signals.

Each of these variables had 10299 observations, connected to the 30 subjects who participated in the experiments while performing 6 activities. Information for "Activities" and "subjects" were added as the first two columns of the new dataset.

Afterwards, the new dataset was rearranged by activities and subjects. Finally, as asked by project instructions, the mean of the observations for each activity and subject was calculated for every variable (mean and standard deviation of collected signals). 

This led to the creation of a new dataset with only 180 observations (30 people, 6 activities) of 68 variables, in which the observations were the average numbers computed.

###Variables in the new dataset

"Activities": 1st variable in new dataset, contains the activities which were being performed in each observation. The original labels, 1:6, were substituted by the name of the activities performed (walking, walking upstairs, walking downstairs, etc).

"subjects": 2nd column, contains the number of the subject which was being observed in each row, ranging from 1 to 30.

The other rows contain the mean and standard deviation for each of the signals collected by the accelerometer and gyroscope in the given experiments.

In each variable name, "mean" implyes that it is the mean of the signal collected, and "std" implies that the standard deviation was calculated from it. "t" indicates time domain signals, and "f" stands for frequency domain signals. Other explanations can be found above, in the information collected from the codebook of the original dataset.



[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012