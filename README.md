# Coursera Getting and Cleaning Data #
## Course Project - README ##
### Overview ###
The purpose of this project is to demonstrate our ability to collect, work with, and clean a data set. The
goal is to prepare tidy data that can be used for later analysis.

### Deliverables ###
Deliverables will consist of the following:

1. This `README.md` file which explains where the data comes from, how the data has been manipulated, as well as the outputs of the process.
2. An R script `run_analysis.R` which performs the analysis and generates a tidy data set.
3. A tidy data set textfile `tidydataset.txt` containing comma separated values with the average of each variable for each activity and each subject.
4. A code book `CodeBook.md` that describes the variables, the data, and any transformations or work performed to clean up the data.
5. A link to a Github repository with the `README.md` file, the `run_analysis.R` script for performing the analysis, and the resulting tidy data set file `tidydataset.txt`.

### Source Data ###
One of the most exciting areas in all of data science right now is wearable computing. Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smart phone. A full description is available at the UC Irvine Machine Learning Repository where the data was obtained.

[http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones "UCI Machine Learning Repository - Human Activity Recognition User Smartphones Data Set")

The raw data for the project was obtained here.

[https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip "Coursera Getting and Cleaning Data Course Project Data Set")

The downloaded data file is a compressed .zip file containing the following directory structure.

- UCI HAR Dataset/activity_labels.txt
- UCI HAR Dataset/features.txt
- UCI HAR Dataset/features_info.txt
- UCI HAR Dataset/README.txt
- UCI HAR Dataset/test/Inertial Signals/body_acc_x_test.txt
- UCI HAR Dataset/test/Inertial Signals/body_acc_y_test.txt
- UCI HAR Dataset/test/Inertial Signals/body_acc_z_test.txt
- UCI HAR Dataset/test/Inertial Signals/body_gyro_x_test.txt
- UCI HAR Dataset/test/Inertial Signals/body_gyro_y_test.txt
- UCI HAR Dataset/test/Inertial Signals/body_gyro_z_test.txt
- UCI HAR Dataset/test/Inertial Signals/total_acc_x_test.txt
- UCI HAR Dataset/test/Inertial Signals/total_acc_y_test.txt
- UCI HAR Dataset/test/Inertial Signals/total_acc_z_test.txt
- UCI HAR Dataset/test/subject_test.txt
- UCI HAR Dataset/test/X_test.txt
- UCI HAR Dataset/test/y_test.txt
- UCI HAR Dataset/train/Inertial Signals/body_acc_x_train.txt
- UCI HAR Dataset/train/Inertial Signals/body_acc_y_train.txt
- UCI HAR Dataset/train/Inertial Signals/body_acc_z_train.txt
- UCI HAR Dataset/train/Inertial Signals/body_gyro_x_train.txt
- UCI HAR Dataset/train/Inertial Signals/body_gyro_y_train.txt
- UCI HAR Dataset/train/Inertial Signals/body_gyro_z_train.txt
- UCI HAR Dataset/train/Inertial Signals/total_acc_x_train.txt
- UCI HAR Dataset/train/Inertial Signals/total_acc_y_train.txt
- UCI HAR Dataset/train/Inertial Signals/total_acc_z_train.txt
- UCI HAR Dataset/train/subject_train.txt
- UCI HAR Dataset/train/X_train.txt
- UCI HAR Dataset/train/y_train.txt

Only the following eight files are actually required to complete the project.

- UCI HAR Dataset/activity_labels.txt
- UCI HAR Dataset/features.txt
- UCI HAR Dataset/test/subject_test.txt
- UCI HAR Dataset/test/X_test.txt
- UCI HAR Dataset/test/y_test.txt
- UCI HAR Dataset/train/subject_train.txt
- UCI HAR Dataset/train/X_train.txt
- UCI HAR Dataset/train/y_train.txt

#### Data Set information ####
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING\_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.

#### Attribute Information ####
For each record in the dataset it is provided:
 
- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope.
- A 561-feature vector with time and frequency domain variables.
- Its activity label.
- An identifier of the subject who carried out the experiment.

#### File Information ####
- `activity_labels.txt` Links the class labels with their activity name.
- `features.txt` Shows information about the variables used on the feature vector.
- `subject_test.txt` Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30.
- `X_test.txt` Test set.
- `y_test.txt` Test labels.
- `subject_train.txt:` Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30.
- `X_train.txt` Training set.
- `y_train.txt` Training labels.

#### Feature Selection ####
The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

- tBodyAcc-XYZ
- tGravityAcc-XYZ
- tBodyAccJerk-XYZ
- tBodyGyro-XYZ
- tBodyGyroJerk-XYZ
- tBodyAccMag
- tGravityAccMag
- tBodyAccJerkMag
- tBodyGyroMag
- tBodyGyroJerkMag
- fBodyAcc-XYZ
- fBodyAccJerk-XYZ
- fBodyGyro-XYZ
- fBodyAccMag
- fBodyAccJerkMag
- fBodyGyroMag
- fBodyGyroJerkMag

The set of variables that were estimated from these signals are: 

- mean(): Mean value
- std(): Standard deviation
- mad(): Median absolute deviation 
- max(): Largest value in array
- min(): Smallest value in array
- sma(): Signal magnitude area
- energy(): Energy measure. Sum of the squares divided by the number of values. 
- iqr(): Interquartile range 
- entropy(): Signal entropy
- arCoeff(): Autorregresion coefficients with Burg order equal to 4
- correlation(): correlation coefficient between two signals
- maxInds(): index of the frequency component with largest magnitude
- meanFreq(): Weighted average of the frequency components to obtain a mean frequency
- skewness(): skewness of the frequency domain signal 
- kurtosis(): kurtosis of the frequency domain signal 
- bandsEnergy(): Energy of a frequency interval within the 64 bins of the FFT of each window.
- angle(): Angle between to vectors.

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle\() variable:

- gravityMean
- tBodyAccMean
- tBodyAccJerkMean
- tBodyGyroMean
- tBodyGyroJerkMean

The complete list of variables of each feature vector is available in `features.txt`

#### Notes: ####
- Features are normalized and bounded within [-1,1].
- Each feature vector is a row on the text file.

### Data Analysis ###
The `run_analysis.R` script performs all the data analysis and generates a tidy data set as a result.  The script performs the following actions.

1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement.
3. Uses descriptive activity names to name the activities in the data set.
4. Appropriately labels the data set with descriptive variable names.
5. Creates a second, independent tidy data set with the average of each variable for each activity and
each subject.

See the `run_analysis.R` script file for detailed comments on how the script performs the data analysis.

### Output Data ###
The result of the data analysis is a tidy data set conforming to the conditions identified in the Week 3 Lecture titled "Reshaping data" by Jeffrey Leek, which in turn referenced the paper "Tidy Data" by Hadley Wickham.

A data set is said to be tidy if it satisfies the following conditions:

1. Observations are in rows.
2. Variables are in columns.
3. Contained in a single data set.

The tidy data set `tidydataset.txt` generated by `run_analysis.R` meets all those conditions.  This file is a comma separated values text file that can be imported into RStudio using `read.csv`. Alternately, the file can be imported into a spreadsheet program such as Microsoft Excel.

#### Data Set Description ####
Each row of the tidy data set contains a single observation based on the following ID variables.

- `subjectid` The subject who performed the activity for each window sample (a value between 1 and 30).
- `activity` The activity performed (WALKING, WALKING\_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING).

and the mean of the following measurement variables from the source data

- `meanoftimedomainbodyaccelerometermeanx`
- `meanoftimedomainbodyaccelerometermeany`
- `meanoftimedomainbodyaccelerometermeanz`
- `meanoftimedomainbodyaccelerometerstandarddeviationx`
- `meanoftimedomainbodyaccelerometerstandarddeviationy`
- `meanoftimedomainbodyaccelerometerstandarddeviationz`
- `meanoftimedomaingravityaccelerometermeanx`
- `meanoftimedomaingravityaccelerometermeany`
- `meanoftimedomaingravityaccelerometermeanz`
- `meanoftimedomaingravityaccelerometerstandarddeviationx`
- `meanoftimedomaingravityaccelerometerstandarddeviationy`
- `meanoftimedomaingravityaccelerometerstandarddeviationz`
- `meanoftimedomainbodyaccelerometerjerkmeanx`
- `meanoftimedomainbodyaccelerometerjerkmeany`
- `meanoftimedomainbodyaccelerometerjerkmeanz`
- `meanoftimedomainbodyaccelerometerjerkstandarddeviationx`
- `meanoftimedomainbodyaccelerometerjerkstandarddeviationy`
- `meanoftimedomainbodyaccelerometerjerkstandarddeviationz`
- `meanoftimedomainbodygyroscopemeanx`
- `meanoftimedomainbodygyroscopemeany`
- `meanoftimedomainbodygyroscopemeanz`
- `meanoftimedomainbodygyroscopestandarddeviationx`
- `meanoftimedomainbodygyroscopestandarddeviationy`
- `meanoftimedomainbodygyroscopestandarddeviationz`
- `meanoftimedomainbodygyroscopejerkmeanx`
- `meanoftimedomainbodygyroscopejerkmeany`
- `meanoftimedomainbodygyroscopejerkmeanz`
- `meanoftimedomainbodygyroscopejerkstandarddeviationx`
- `meanoftimedomainbodygyroscopejerkstandarddeviationy`
- `meanoftimedomainbodygyroscopejerkstandarddeviationz`
- `meanoftimedomainbodyaccelerometermagnitudemean`
- `meanoftimedomainbodyaccelerometermagnitudestandarddeviation`
- `meanoftimedomaingravityaccelerometermagnitudemean`
- `meanoftimedomaingravityaccelerometermagnitudestandarddeviation`
- `meanoftimedomainbodyaccelerometerjerkmagnitudemean`
- `meanoftimedomainbodyaccelerometerjerkmagnitudestandarddeviation`
- `meanoftimedomainbodygyroscopemagnitudemean`
- `meanoftimedomainbodygyroscopemagnitudestandarddeviation`
- `meanoftimedomainbodygyroscopejerkmagnitudemean`
- `meanoftimedomainbodygyroscopejerkmagnitudestandarddeviation`
- `meanoffastfouriertransformbodyaccelerometermeanx`
- `meanoffastfouriertransformbodyaccelerometermeany`
- `meanoffastfouriertransformbodyaccelerometermeanz`
- `meanoffastfouriertransformbodyaccelerometerstandarddeviationx`
- `meanoffastfouriertransformbodyaccelerometerstandarddeviationy`
- `meanoffastfouriertransformbodyaccelerometerstandarddeviationz`
- `meanoffastfouriertransformbodyaccelerometerjerkmeanx`
- `meanoffastfouriertransformbodyaccelerometerjerkmeany`
- `meanoffastfouriertransformbodyaccelerometerjerkmeanz`
- `meanoffastfouriertransformbodyaccelerometerjerkstandarddeviationx`
- `meanoffastfouriertransformbodyaccelerometerjerkstandarddeviationy`
- `meanoffastfouriertransformbodyaccelerometerjerkstandarddeviationz`
- `meanoffastfouriertransformbodygyroscopemeanx`
- `meanoffastfouriertransformbodygyroscopemeany`
- `meanoffastfouriertransformbodygyroscopemeanz`
- `meanoffastfouriertransformbodygyroscopestandarddeviationx`
- `meanoffastfouriertransformbodygyroscopestandarddeviationy`
- `meanoffastfouriertransformbodygyroscopestandarddeviationz`
- `meanoffastfouriertransformbodyaccelerometermagnitudemean`
- `meanoffastfouriertransformbodyaccelerometermagnitudestandarddeviation`
- `meanoffastfouriertransformbodyaccelerometerjerkmagnitudemean`
- `meanoffastfouriertransformbodyaccelerometerjerkmagnitudestandarddeviation`
- `meanoffastfouriertransformbodygyroscopemagnitudemean`
- `meanoffastfouriertransformbodygyroscopemagnitudestandarddeviation`
- `meanoffastfouriertransformbodygyroscopejerkmagnitudemean`
- `meanoffastfouriertransformbodygyroscopejerkmagnitudestandarddeviation`