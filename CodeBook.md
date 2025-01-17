# Coursera Getting and Cleaning Data #
## Course Project - CodeBook ##
### Overview ###
This CodeBook explains the `tidydataset.txt` comma separated values data set file generated by the `run_analysis.R` script.  It contains the  names of variables, a quick explanation of what they are, and the type of the variable (char, integer, etc.).

#### Data Structure ####
`tidydataset.txt` is a comma separated values text file with the following structure.

Variable | Datatype | Description
:--- | :--- | :---
subjectid | integer | The subject who performed the activity for each window sample (a value between 1 and 30).
activity | character | The activity performed (WALKING, WALKING\_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING).
meanoftimedomainbodyaccelerometermeanx	|	numeric	|	Mean of the time domain body accelerometer mean X.	It is a value normalized and bounded within [-1,1].
meanoftimedomainbodyaccelerometermeany	|	numeric	|	Mean of the time domain body accelerometer mean Y.	It is a value normalized and bounded within [-1,1].
meanoftimedomainbodyaccelerometermeanz	|	numeric	|	Mean of the time domain body accelerometer mean Z.	It is a value normalized and bounded within [-1,1].
meanoftimedomainbodyaccelerometerstandarddeviationx	|	numeric	|	Mean of the time domain body accelerometer standard deviation X.	It is a value normalized and bounded within [-1,1].
meanoftimedomainbodyaccelerometerstandarddeviationy	|	numeric	|	Mean of the time domain body accelerometer standard deviation Y.	It is a value normalized and bounded within [-1,1].
meanoftimedomainbodyaccelerometerstandarddeviationz	|	numeric	|	Mean of the time domain body accelerometer standard deviation Z.	It is a value normalized and bounded within [-1,1].
meanoftimedomaingravityaccelerometermeanx	|	numeric	|	Mean of the time domain gravity accelerometer mean X.	It is a value normalized and bounded within [-1,1].
meanoftimedomaingravityaccelerometermeany	|	numeric	|	Mean of the time domain gravity accelerometer mean Y.	It is a value normalized and bounded within [-1,1].
meanoftimedomaingravityaccelerometermeanz	|	numeric	|	Mean of the time domain gravity accelerometer mean Z.	It is a value normalized and bounded within [-1,1].
meanoftimedomaingravityaccelerometerstandarddeviationx	|	numeric	|	Mean of the time domain gravity accelerometer standard deviation X.	It is a value normalized and bounded within [-1,1].
meanoftimedomaingravityaccelerometerstandarddeviationy	|	numeric	|	Mean of the time domain gravity accelerometer standard deviation Y.	It is a value normalized and bounded within [-1,1].
meanoftimedomaingravityaccelerometerstandarddeviationz	|	numeric	|	Mean of the time domain gravity accelerometer standard deviation Z.	It is a value normalized and bounded within [-1,1].
meanoftimedomainbodyaccelerometerjerkmeanx	|	numeric	|	Mean of the time domain body accelerometer jerk mean X.	It is a value normalized and bounded within [-1,1].
meanoftimedomainbodyaccelerometerjerkmeany	|	numeric	|	Mean of the time domain body accelerometer jerk mean Y.	It is a value normalized and bounded within [-1,1].
meanoftimedomainbodyaccelerometerjerkmeanz	|	numeric	|	Mean of the time domain body accelerometer jerk mean Z.	It is a value normalized and bounded within [-1,1].
meanoftimedomainbodyaccelerometerjerkstandarddeviationx	|	numeric	|	Mean of the time domain body accelerometer jerk standard deviation X.	It is a value normalized and bounded within [-1,1].
meanoftimedomainbodyaccelerometerjerkstandarddeviationy	|	numeric	|	Mean of the time domain body accelerometer jerk standard deviation Y.	It is a value normalized and bounded within [-1,1].
meanoftimedomainbodyaccelerometerjerkstandarddeviationz	|	numeric	|	Mean of the time domain body accelerometer jerk standard deviation Z.	It is a value normalized and bounded within [-1,1].
meanoftimedomainbodygyroscopemeanx	|	numeric	|	Mean of the time domain body gyroscope mean X.	It is a value normalized and bounded within [-1,1].
meanoftimedomainbodygyroscopemeany	|	numeric	|	Mean of the time domain body gyroscope mean Y.	It is a value normalized and bounded within [-1,1].
meanoftimedomainbodygyroscopemeanz	|	numeric	|	Mean of the time domain body gyroscope mean Z.	It is a value normalized and bounded within [-1,1].
meanoftimedomainbodygyroscopestandarddeviationx	|	numeric	|	Mean of the time domain body gyroscope standard deviation X.	It is a value normalized and bounded within [-1,1].
meanoftimedomainbodygyroscopestandarddeviationy	|	numeric	|	Mean of the time domain body gyroscope standard deviation Y.	It is a value normalized and bounded within [-1,1].
meanoftimedomainbodygyroscopestandarddeviationz	|	numeric	|	Mean of the time domain body gyroscope standard deviation Z.	It is a value normalized and bounded within [-1,1].
meanoftimedomainbodygyroscopejerkmeanx	|	numeric	|	Mean of the time domain body gyroscope jerk mean X.	It is a value normalized and bounded within [-1,1].
meanoftimedomainbodygyroscopejerkmeany	|	numeric	|	Mean of the time domain body gyroscope jerk mean Y.	It is a value normalized and bounded within [-1,1].
meanoftimedomainbodygyroscopejerkmeanz	|	numeric	|	Mean of the time domain body gyroscope jerk mean Z.	It is a value normalized and bounded within [-1,1].
meanoftimedomainbodygyroscopejerkstandarddeviationx	|	numeric	|	Mean of the time domain body gyroscope jerk standard deviation X.	It is a value normalized and bounded within [-1,1].
meanoftimedomainbodygyroscopejerkstandarddeviationy	|	numeric	|	Mean of the time domain body gyroscope jerk standard deviation Y.	It is a value normalized and bounded within [-1,1].
meanoftimedomainbodygyroscopejerkstandarddeviationz	|	numeric	|	Mean of the time domain body gyroscope jerk standard deviation Z.	It is a value normalized and bounded within [-1,1].
meanoftimedomainbodyaccelerometermagnitudemean	|	numeric	|	Mean of the time domain body accelerometer magnitude mean.	It is a value normalized and bounded within [-1,1].
meanoftimedomainbodyaccelerometermagnitudestandarddeviation	|	numeric	|	Mean of the time domain body accelerometer magnitude standard deviation.	It is a value normalized and bounded within [-1,1].
meanoftimedomaingravityaccelerometermagnitudemean	|	numeric	|	Mean of the time domain gravity accelerometer magnitude mean.	It is a value normalized and bounded within [-1,1].
meanoftimedomaingravityaccelerometermagnitudestandarddeviation	|	numeric	|	Mean of the time domain gravity accelerometer magnitude standard deviation.	It is a value normalized and bounded within [-1,1].
meanoftimedomainbodyaccelerometerjerkmagnitudemean	|	numeric	|	Mean of the time domain body accelerometer jerk magnitude mean.	It is a value normalized and bounded within [-1,1].
meanoftimedomainbodyaccelerometerjerkmagnitudestandarddeviation	|	numeric	|	Mean of the time domain body accelerometer jerk magnitude standard deviation.	It is a value normalized and bounded within [-1,1].
meanoftimedomainbodygyroscopemagnitudemean	|	numeric	|	Mean of the time domain body gyroscope magnitude mean.	It is a value normalized and bounded within [-1,1].
meanoftimedomainbodygyroscopemagnitudestandarddeviation	|	numeric	|	Mean of the time domain body gyroscope magnitude standard deviation.	It is a value normalized and bounded within [-1,1].
meanoftimedomainbodygyroscopejerkmagnitudemean	|	numeric	|	Mean of the time domain body gyroscope jerk magnitude mean.	It is a value normalized and bounded within [-1,1].
meanoftimedomainbodygyroscopejerkmagnitudestandarddeviation	|	numeric	|	Mean of the time domain body gyroscope jerk magnitude standard deviation.	It is a value normalized and bounded within [-1,1].
meanoffastfouriertransformbodyaccelerometermeanx	|	numeric	|	Mean of the Fast Fourier Transform (FFT) body accelerometer mean X.	It is a value normalized and bounded within [-1,1].
meanoffastfouriertransformbodyaccelerometermeany	|	numeric	|	Mean of the Fast Fourier Transform (FFT) body accelerometer mean Y.	It is a value normalized and bounded within [-1,1].
meanoffastfouriertransformbodyaccelerometermeanz	|	numeric	|	Mean of the Fast Fourier Transform (FFT) body accelerometer mean Z.	It is a value normalized and bounded within [-1,1].
meanoffastfouriertransformbodyaccelerometerstandarddeviationx	|	numeric	|	Mean of the Fast Fourier Transform (FFT) body accelerometer standard deviation X.	It is a value normalized and bounded within [-1,1].
meanoffastfouriertransformbodyaccelerometerstandarddeviationy	|	numeric	|	Mean of the Fast Fourier Transform (FFT) body accelerometer standard deviation Y.	It is a value normalized and bounded within [-1,1].
meanoffastfouriertransformbodyaccelerometerstandarddeviationz	|	numeric	|	Mean of the Fast Fourier Transform (FFT) body accelerometer standard deviation Z.	It is a value normalized and bounded within [-1,1].
meanoffastfouriertransformbodyaccelerometerjerkmeanx	|	numeric	|	Mean of the Fast Fourier Transform (FFT) body accelerometer jerk mean X.	It is a value normalized and bounded within [-1,1].
meanoffastfouriertransformbodyaccelerometerjerkmeany	|	numeric	|	Mean of the Fast Fourier Transform (FFT) body accelerometer jerk mean Y.	It is a value normalized and bounded within [-1,1].
meanoffastfouriertransformbodyaccelerometerjerkmeanz	|	numeric	|	Mean of the Fast Fourier Transform (FFT) body accelerometer jerk mean Z.	It is a value normalized and bounded within [-1,1].
meanoffastfouriertransformbodyaccelerometerjerkstandarddeviationx	|	numeric	|	Mean of the Fast Fourier Transform (FFT) body accelerometer jerk standard deviation X.	It is a value normalized and bounded within [-1,1].
meanoffastfouriertransformbodyaccelerometerjerkstandarddeviationy	|	numeric	|	Mean of the Fast Fourier Transform (FFT) body accelerometer jerk standard deviation Y.	It is a value normalized and bounded within [-1,1].
meanoffastfouriertransformbodyaccelerometerjerkstandarddeviationz	|	numeric	|	Mean of the Fast Fourier Transform (FFT) body accelerometer jerk standard deviation Z.	It is a value normalized and bounded within [-1,1].
meanoffastfouriertransformbodygyroscopemeanx	|	numeric	|	Mean of the Fast Fourier Transform (FFT) body gyroscope mean X.	It is a value normalized and bounded within [-1,1].
meanoffastfouriertransformbodygyroscopemeany	|	numeric	|	Mean of the Fast Fourier Transform (FFT) body gyroscope mean Y.	It is a value normalized and bounded within [-1,1].
meanoffastfouriertransformbodygyroscopemeanz	|	numeric	|	Mean of the Fast Fourier Transform (FFT) body gyroscope mean Z.	It is a value normalized and bounded within [-1,1].
meanoffastfouriertransformbodygyroscopestandarddeviationx	|	numeric	|	Mean of the Fast Fourier Transform (FFT) body gyroscope standard deviation X.	It is a value normalized and bounded within [-1,1].
meanoffastfouriertransformbodygyroscopestandarddeviationy	|	numeric	|	Mean of the Fast Fourier Transform (FFT) body gyroscope standard deviation Y.	It is a value normalized and bounded within [-1,1].
meanoffastfouriertransformbodygyroscopestandarddeviationz	|	numeric	|	Mean of the Fast Fourier Transform (FFT) body gyroscope standard deviation Z.	It is a value normalized and bounded within [-1,1].
meanoffastfouriertransformbodyaccelerometermagnitudemean	|	numeric	|	Mean of the Fast Fourier Transform (FFT) body accelerometer magnitude mean.	It is a value normalized and bounded within [-1,1].
meanoffastfouriertransformbodyaccelerometermagnitudestandarddeviation	|	numeric	|	Mean of the Fast Fourier Transform (FFT) body accelerometer magnitude standard deviation.	It is a value normalized and bounded within [-1,1].
meanoffastfouriertransformbodyaccelerometerjerkmagnitudemean	|	numeric	|	Mean of the Fast Fourier Transform (FFT) body accelerometer jerk magnitude mean.	It is a value normalized and bounded within [-1,1].
meanoffastfouriertransformbodyaccelerometerjerkmagnitudestandarddeviation	|	numeric	|	Mean of the Fast Fourier Transform (FFT) body accelerometer jerk magnitude standard deviation.	It is a value normalized and bounded within [-1,1].
meanoffastfouriertransformbodygyroscopemagnitudemean	|	numeric	|	Mean of the Fast Fourier Transform (FFT) body gyroscope magnitude mean.	It is a value normalized and bounded within [-1,1].
meanoffastfouriertransformbodygyroscopemagnitudestandarddeviation	|	numeric	|	Mean of the Fast Fourier Transform (FFT) body gyroscope magnitude standard deviation.	It is a value normalized and bounded within [-1,1].
meanoffastfouriertransformbodygyroscopejerkmagnitudemean	|	numeric	|	Mean of the Fast Fourier Transform (FFT) body gyroscope jerk magnitude mean.	It is a value normalized and bounded within [-1,1].
meanoffastfouriertransformbodygyroscopejerkmagnitudestandarddeviation	|	numeric	|	Mean of the Fast Fourier Transform (FFT) body gyroscope jerk magnitude standard deviation.	It is a value normalized and bounded within [-1,1].
