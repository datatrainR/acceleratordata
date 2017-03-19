# Codebook
## Data Origin
The data in tidydata.txt originates from the "Human Activity Recognition Using Smartphones Data Set"
It contains data gathered from accelerometers on smartphones :running_shirt_with_sash: :running_shirt_with_sash: :running_shirt_with_sash: :running_shirt_with_sash:

A full description is available at the site where the data was obtained:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Here are the data for the project:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

## Variables in Dataset

### Data
The dataset contains 81 variables and 180 observations: one observation per subject (30) and activity (6)

### Transformations
These transformations were applied
1. The data which was devided into a training and a test set were combined to one dataset
2. Only the measurements on the mean and standard deviation for each measurement were extracted
3. The numeric activity variable was replaced by an appropriately named factor variable
4. Appropriate (human-readable) labels were given to the variable names
5. The data was collapsed to only include the average per subject and activity

### Variable names

* subject describes the subject ID
* activity is one of the 6 recorded activities: LAYING SITTING STANDING WALKING WALKING_DOWNSTAIRS WALKING_UPSTAIRS
* the prefix "time_" indicates time domain signals, which were captured at a constant rate of 50 Hz
* the prefix "freq_" indicates frequencies gained from Fast Fourier Transform (FFT) applied to some of these signals
* X,Y and Z are used to denote 3-axial signals in the X, Y and Z directions.
* mean is the mean value
* std is the Standard deviation 

### Variable List

* subject
* activity
* time_bodyaccelerometer_mean_X
* time_bodyaccelerometer_mean_Y
* time_bodyaccelerometer_mean_Z
* time_bodyaccelerometer_std_X
* time_bodyaccelerometer_std_Y
* time_bodyaccelerometer_std_Z
* time_Gravityaccelerometer_mean_X
* time_Gravityaccelerometer_mean_Y
* time_Gravityaccelerometer_mean_Z
* time_Gravityaccelerometer_std_X
* time_Gravityaccelerometer_std_Y
* time_Gravityaccelerometer_std_Z
* time_bodyaccelerometerJerk_mean_X
* time_bodyaccelerometerJerk_mean_Y
* time_bodyaccelerometerJerk_mean_Z
* time_bodyaccelerometerJerk_std_X
* time_bodyaccelerometerJerk_std_Y
* time_bodyaccelerometerJerk_std_Z
* time_bodygyroscope_mean_X
* time_bodygyroscope_mean_Y
* time_bodygyroscope_mean_Z
* time_bodygyroscope_std_X
* time_bodygyroscope_std_Y
* time_bodygyroscope_std_Z
* time_bodygyroscopeJerk_mean_X
* time_bodygyroscopeJerk_mean_Y
* time_bodygyroscopeJerk_mean_Z
* time_bodygyroscopeJerk_std_X
* time_bodygyroscopeJerk_std_Y
* time_bodygyroscopeJerk_std_Z
* time_bodyaccelerometerMag_mean
* time_bodyaccelerometerMag_std
* time_GravityaccelerometerMag_mean
* time_GravityaccelerometerMag_std
* time_bodyaccelerometerJerkMag_mean
* time_bodyaccelerometerJerkMag_std
* time_bodygyroscopeMag_mean
* time_bodygyroscopeMag_std
* time_bodygyroscopeJerkMag_mean
* time_bodygyroscopeJerkMag_std
* freq_bodyaccelerometer_mean_X
* freq_bodyaccelerometer_mean_Y
* freq_bodyaccelerometer_mean_Z
* freq_bodyaccelerometer_std_X
* freq_bodyaccelerometer_std_Y
* freq_bodyaccelerometer_std_Z
* freq_bodyaccelerometer_meanFreq_X
* freq_bodyaccelerometer_meanFreq_Y
* freq_bodyaccelerometer_meanFreq_Z
* freq_bodyaccelerometerJerk_mean_X
* freq_bodyaccelerometerJerk_mean_Y
* freq_bodyaccelerometerJerk_mean_Z
* freq_bodyaccelerometerJerk_std_X
* freq_bodyaccelerometerJerk_std_Y
* freq_bodyaccelerometerJerk_std_Z
* freq_bodyaccelerometerJerk_meanFreq_X
* freq_bodyaccelerometerJerk_meanFreq_Y
* freq_bodyaccelerometerJerk_meanFreq_Z
* freq_bodygyroscope_mean_X
* freq_bodygyroscope_mean_Y
* freq_bodygyroscope_mean_Z
* freq_bodygyroscope_std_X
* freq_bodygyroscope_std_Y
* freq_bodygyroscope_std_Z
* freq_bodygyroscope_meanFreq_X
* freq_bodygyroscope_meanFreq_Y
* freq_bodygyroscope_meanFreq_Z
* freq_bodyaccelerometerMag_mean
* freq_bodyaccelerometerMag_std
* freq_bodyaccelerometerMag_meanFreq
* freq_bodyaccelerometerJerkMag_mean
* freq_bodyaccelerometerJerkMag_std
* freq_bodyaccelerometerJerkMag_meanFreq
* freq_bodygyroscopeMag_mean
* freq_bodygyroscopeMag_std
* freq_bodygyroscopeMag_meanFreq
* freq_bodygyroscopeJerkMag_mean
* freq_bodygyroscopeJerkMag_std
* freq_bodygyroscopeJerkMag_meanFreq


