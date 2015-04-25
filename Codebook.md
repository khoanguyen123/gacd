## Codebook

### Output dataset description

The output dataset contains the mean for various measurements per subject per activity.

- Subject: participant ID, ranging from 1 to 30

- Activity: LAYING, SITTING, STANDING, WALKING, WALKING_DOWNSTAIRS, WALKING_UPSTAIRS

- The rest of the columns are the mean of the measurements. 

  The measurements' names have the following convention: (t|:f)(measurement)[X|:Y|:Z], where
  
  - t indicates time 
  
  - f indicates frequency
  
  - measurement indicates a specific measure or calculation. For example: 
  
    BodyAccstd = Standard deviation of Body Acceleration
	
	GravityAccmean = mean value of Gravity Acceleration
	
	... and so on
	
  - X|Y|Z: if present, indicates the measurement in the X, Y, or Z direction
	
- Below is the list of all the columns:
  Index Name | Name
  ----- | ----- | ------
 [1] "Subject  |:  Activity"                    
 [3] "tBodyAccstdX  |:  tBodyAccstdY"                
 [5] "tBodyAccstdZ  |:  tGravityAccstdX"             
 [7] "tGravityAccstdY  |:  tGravityAccstdZ"             
 [9] "tBodyAccJerkstdX  |:  tBodyAccJerkstdY"            
[11] "tBodyAccJerkstdZ  |:  tBodyGyrostdX"               
[13] "tBodyGyrostdY  |:  tBodyGyrostdZ"               
[15] "tBodyGyroJerkstdX  |:  tBodyGyroJerkstdY"           
[17] "tBodyGyroJerkstdZ  |:  tBodyAccMagstd"              
[19] "tGravityAccMagstd  |:  tBodyAccJerkMagstd"          
[21] "tBodyGyroMagstd  |:  tBodyGyroJerkMagstd"         
[23] "fBodyAccstdX  |:  fBodyAccstdY"                
[25] "fBodyAccstdZ  |:  fBodyAccJerkstdX"            
[27] "fBodyAccJerkstdY  |:  fBodyAccJerkstdZ"            
[29] "fBodyGyrostdX  |:  fBodyGyrostdY"               
[31] "fBodyGyrostdZ  |:  fBodyAccMagstd"              
[33] "fBodyBodyAccJerkMagstd  |:  fBodyBodyGyroMagstd"         
[35] "fBodyBodyGyroJerkMagstd  |:  tBodyAccmeanX"               
[37] "tBodyAccmeanY  |:  tBodyAccmeanZ"               
[39] "tGravityAccmeanX  |:  tGravityAccmeanY"            
[41] "tGravityAccmeanZ  |:  tBodyAccJerkmeanX"           
[43] "tBodyAccJerkmeanY  |:  tBodyAccJerkmeanZ"           
[45] "tBodyGyromeanX  |:  tBodyGyromeanY"              
[47] "tBodyGyromeanZ  |:  tBodyGyroJerkmeanX"          
[49] "tBodyGyroJerkmeanY  |:  tBodyGyroJerkmeanZ"          
[51] "tBodyAccMagmean  |:  tGravityAccMagmean"          
[53] "tBodyAccJerkMagmean  |:  tBodyGyroMagmean"            
[55] "tBodyGyroJerkMagmean  |:  fBodyAccmeanX"               
[57] "fBodyAccmeanY  |:  fBodyAccmeanZ"               
[59] "fBodyAccmeanFreqX  |:  fBodyAccmeanFreqY"           
[61] "fBodyAccmeanFreqZ  |:  fBodyAccJerkmeanX"           
[63] "fBodyAccJerkmeanY  |:  fBodyAccJerkmeanZ"           
[65] "fBodyAccJerkmeanFreqX  |:  fBodyAccJerkmeanFreqY"       
[67] "fBodyAccJerkmeanFreqZ  |:  fBodyGyromeanX"              
[69] "fBodyGyromeanY  |:  fBodyGyromeanZ"              
[71] "fBodyGyromeanFreqX  |:  fBodyGyromeanFreqY"          
[73] "fBodyGyromeanFreqZ  |:  fBodyAccMagmean"             
[75] "fBodyAccMagmeanFreq  |:  fBodyBodyAccJerkMagmean"     
[77] "fBodyBodyAccJerkMagmeanFreq  |:  fBodyBodyGyroMagmean"        
[79] "fBodyBodyGyroMagmeanFreq  |:  fBodyBodyGyroJerkMagmean"    
[81] "fBodyBodyGyroJerkMagmeanFreq" |: