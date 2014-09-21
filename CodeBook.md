================================================================
Code Book for Coursera - Getting and Cleaning Data class project
Richard Brown
September 21, 2014
================================================================

STUDY DESIGN
++++++++++++

The original study was performed by:

Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto. 
Smartlab - Non Linear Complex Systems Laboratory 
DITEN - Universit√  degli Studi di Genova, Genoa I-16145, Italy. 
activityrecognition '@' smartlab.ws 
www.smartlab.ws 

You can get details on the design and the data at:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

=================================================================

CODE BOOK
+++++++++

The original data set is well described in the following files in this repository:
- README.md
- features_info.txt

The transformed data set was developed from the raw data sets using the run_analysis.R code.
The detailed steps followed for this transformation are described in the README.md file. 

The transformed and summarized tidy dataset is stored in a file called summary.txt
This file contains 15,480 rows of data with 4 variables.

==================================================================

Variable Descriptions:

- subject_code: Categorical - Ranges from 1-30 with each number representing a test subject)

- activity_name: Categorical - Describes the physical activity completed by the test subjects.
  Includes: LAYING SITTING STANDING WALKING WALKING_DOWNSTAIRS WALKING_UPSTAIRS)

- measure_type: Categorical - Description of the standard deviation or mean measurement including 
  the three dimensional plane. 
  Includes: 
tBodyAcc-mean()-X                    tBodyAcc-mean()-Y                   
tBodyAcc-mean()-Z                    tGravityAcc-mean()-X                
tGravityAcc-mean()-Y                 tGravityAcc-mean()-Z                
tBodyAccJerk-mean()-X                tBodyAccJerk-mean()-Y               
tBodyAccJerk-mean()-Z                tBodyGyro-mean()-X                  
tBodyGyro-mean()-Y                   tBodyGyro-mean()-Z                  
tBodyGyroJerk-mean()-X               tBodyGyroJerk-mean()-Y              
tBodyGyroJerk-mean()-Z               tBodyAccMag-mean()                  
tGravityAccMag-mean()                tBodyAccJerkMag-mean()              
tBodyGyroMag-mean()                  tBodyGyroJerkMag-mean()             
fBodyAcc-mean()-X                    fBodyAcc-mean()-Y                   
fBodyAcc-mean()-Z                    fBodyAcc-meanFreq()-X               
fBodyAcc-meanFreq()-Y                fBodyAcc-meanFreq()-Z               
fBodyAccJerk-mean()-X                fBodyAccJerk-mean()-Y               
fBodyAccJerk-mean()-Z                fBodyAccJerk-meanFreq()-X           
fBodyAccJerk-meanFreq()-Y            fBodyAccJerk-meanFreq()-Z           
fBodyGyro-mean()-X                   fBodyGyro-mean()-Y                  
fBodyGyro-mean()-Z                   fBodyGyro-meanFreq()-X              
fBodyGyro-meanFreq()-Y               fBodyGyro-meanFreq()-Z              
fBodyAccMag-mean()                   fBodyAccMag-meanFreq()              
fBodyBodyAccJerkMag-mean()           fBodyBodyAccJerkMag-meanFreq()      
fBodyBodyGyroMag-mean()              fBodyBodyGyroMag-meanFreq()         
fBodyBodyGyroJerkMag-mean()          fBodyBodyGyroJerkMag-meanFreq()     
angle(tBodyAccMean,gravity)          angle(tBodyAccJerkMean),gravityMean)
angle(tBodyGyroMean,gravityMean)     angle(tBodyGyroJerkMean,gravityMean)
angle(X,gravityMean)                 angle(Y,gravityMean)                
angle(Z,gravityMean)                 tBodyAcc-std()-X                    
tBodyAcc-std()-Y                     tBodyAcc-std()-Z                    
tGravityAcc-std()-X                  tGravityAcc-std()-Y                 
tGravityAcc-std()-Z                  tBodyAccJerk-std()-X                
tBodyAccJerk-std()-Y                 tBodyAccJerk-std()-Z                
tBodyGyro-std()-X                    tBodyGyro-std()-Y                   
tBodyGyro-std()-Z                    tBodyGyroJerk-std()-X               
tBodyGyroJerk-std()-Y                tBodyGyroJerk-std()-Z               
tBodyAccMag-std()                    tGravityAccMag-std()                
tBodyAccJerkMag-std()                tBodyGyroMag-std()                  
tBodyGyroJerkMag-std()               fBodyAcc-std()-X                    
fBodyAcc-std()-Y                     fBodyAcc-std()-Z                    
fBodyAccJerk-std()-X                 fBodyAccJerk-std()-Y                
fBodyAccJerk-std()-Z                 fBodyGyro-std()-X                   
fBodyGyro-std()-Y                    fBodyGyro-std()-Z                   
fBodyAccMag-std()                    fBodyBodyAccJerkMag-std()           
fBodyBodyGyroMag-std()               fBodyBodyGyroJerkMag-std()

- average_of_measure: Continuous - an average taken of the raw data grouped by subject, 
activity and measure type. Units match that of the original experiment. 