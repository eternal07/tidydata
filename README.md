==================================================================
Getting and cleaning data course project script readme
Version 1.0
==================================================================
SCRIPT STEPS OR ALGORITHM:

1. I first read in various files of test (x_test.txt, y_test.txt, subject_test.txt) and train (x_train.txt, y_train.txt and subject_train.txt) data as data frames.
2. Use cbind to merge x_test.txt, y_test.txt and subject_test.txt into one test_dataset. Similarly create train_dataset using x_train.txt, y_train.txt and subject_train.txt.
3. use rbind to merge test_dataset and train_dataset into one dataset called "data_set"
4. From this data_set extract all columns with "mean" and "std" in their column name into a dataframe "tidy_dataset"
5. use the aggregate function on the "tidy_dataset" dataframe to create mean for each variable based on "subject" and "activity" variables of the data frame. output this to a data frame "agdataset"
6. update the activity variable column contents of the "agdataset" data frame to descriptive names.
7. format and print the contents of agdataset to file "tidy_data.txt"

Here are the description of each of the variables in the tidy_data.txt file.

 1. subject     			-------> code for subjects who took the test
 2. activity    			-------> activity that each subject performed
 3. tBodyAcc-mean()-X 		-------> mean x-coordinate body acceleration measured in time domain 
 4. tBodyAcc-mean()-Y		-------> mean y-coordinate body acceleration measured in time domain
 5. tBodyAcc-mean()-Z		-------> mean z-coordinate body acceleration measured in time domain
 6. tBodyAcc-std()-X        -------> std deviation x-coordinate body acceleration in time domain
 7. tBodyAcc-std()-Y        -------> std deviation y-coordinate body acceleration in time domain
 8. tBodyAcc-std()-Z        -------> std deviation z-coordinate body acceleration in time domain
 9. tGravityAcc-mean()-X    -------> mean x-coordinate gravity acceleration measured in time domain
 10. tGravityAcc-mean()-Y    -------> mean y-coordinate gravity acceleration measured in time domain
 11. tGravityAcc-mean()-Z    -------> mean z-coordinate gravity acceleration measured in time domain
 12. tGravityAcc-std()-X    --------> std deviation x-coordinate gravity acceleration in time domain
 13. tGravityAcc-std()-Y    --------> std deviation y-coordinate gravity acceleration in time domain
 14. tGravityAcc-std()-Z    --------> std deviation z-coordinate gravity acceleration in time domain
 15. tBodyAccJerk-mean()-X  --------> mean x-coordinate body jerk  measured in time domain
 16. tBodyAccJerk-mean()-Y  --------> mean y-coordinate body jerk  measured in time domain
 17. tBodyAccJerk-mean()-X  --------> mean z-coordinate body jerk  measured in time domain
 18. tBodyAccJerk-std()-X   --------> std deviation x-coordinate body jerk  in time domain
 19. tBodyAccJerk-std()-Y   --------> std deviation y-coordinate body jerk  in time domain
 20. tBodyAccJerk-std()-Z   --------> std deviation z-coordinate body jerk  in time domain
 21.  tBodyGyro-mean()-X    --------> mean x-coordinate gyroscope measurment measured in time domain
 22. tBodyGyro-mean()-Y    --------> mean y-coordinate gyroscope measurment measured in time domain
 23. tBodyGyro-mean()-Z    --------> mean z-coordinate gyroscope measurment measured in time domain
 24.  tBodyGyro-std()-X    --------> std deviation x-coordinate gyroscope  measurment measured in time domain
 25. tBodyGyro-std()-Y    --------> std deviation y-coordinate gyroscope measurment measured in time domain
 26. tBodyGyro-std()-Z    --------> std deviation z-coordinate gyroscope measurment measured in time domain
 27.  tBodyGyroJerk-mean()-X    --------> mean x-coordinate gyroscope jerk measurment measured in time domain
 28. tBodyGyroJerk-mean()-Y    --------> mean y-coordinate gyroscope jerk measurment measured in time domain
 29. tBodyGyroJerk-mean()-Z    --------> mean z-coordinate gyroscope jerk measurment measured in time domain
 30.  tBodyGyroJerk-std()-X    --------> std deviation x-coordinate gyroscope jerk  measurment measured in time domain
 31. tBodyGyroJerk-std()-Y    --------> std deviation y-coordinate gyroscope jerk measurment measured in time domain
 32. tBodyGyroJerk-std()-Z    --------> std deviation z-coordinate gyroscope jerk measurment measured in time domain
 33. tBodyAccMag-mean()		-------> mean magnitude for body acceleration measured in time domain 
 34. tBodyAccMag-std()      -------> std deviation magnitude for  body acceleration in time domain
 35. tGravityAccMag-mean()		-------> mean magnitude for gravity acceleration measured in time domain 
 36. tGravityAccMag-std()       -------> std deviation magnitude for  gravity acceleration in time domain
 37. tBodyAccJerkMag-mean()		-------> mean magnitude for body jerk acceleration measured in time domain 
 38. tBodyAccJerkMag-std()       -------> std deviation magnitude for  body jerk acceleration in time domain
 35. tBodyGyroMag-mean()		-------> mean magnitude for gyroscope measured in time domain 
 36. tBodyGyroMag-std()       -------> std deviation magnitude for  gyroscope measured in time domain
 37. tBodyGyroJerkMag-mean()		-------> mean magnitude for gyroscope jerk measured in time domain 
 38. tBodyGyroJerkMag-std()       -------> std deviation magnitude for  gyroscope jerk measured in time domain
 39. fBodyAcc-mean()-X 		-------> mean x-coordinate body acceleration measured in frequency domain 
 40. fBodyAcc-mean()-Y		-------> mean y-coordinate body acceleration measured in frequency domain
 41. fBodyAcc-mean()-Z		-------> mean z-coordinate body acceleration measured in frequency domain
 42. fBodyAcc-std()-X        -------> std deviation x-coordinate body acceleration in frequency domain
 43. fBodyAcc-std()-Y        -------> std deviation y-coordinate body acceleration in frequency domain
 44. fBodyAcc-std()-Z        -------> std deviation z-coordinate body acceleration in frequency domain
 45. fGravityAcc-mean()-X    -------> mean x-coordinate gravity acceleration measured in frequency domain
 46. fGravityAcc-mean()-Y    -------> mean y-coordinate gravity acceleration measured in frequency domain
 47. fGravityAcc-mean()-Z    -------> mean z-coordinate gravity acceleration measured in frequency domain
 48. fGravityAcc-std()-X    --------> std deviation x-coordinate gravity acceleration in frequency domain
 49. fGravityAcc-std()-Y    --------> std deviation y-coordinate gravity acceleration in frequency domain
 50. fGravityAcc-std()-Z    --------> std deviation z-coordinate gravity acceleration in frequency domain
 51. fBodyAccJerk-mean()-X  --------> mean x-coordinate body jerk  measured in frequency domain
 52. fBodyAccJerk-mean()-Y  --------> mean y-coordinate body jerk  measured in frequency domain
 53. fBodyAccJerk-mean()-X  --------> mean z-coordinate body jerk  measured in frequency domain
 54. fBodyAccJerk-std()-X   --------> std deviation x-coordinate body jerk  in frequency domain
 55. fBodyAccJerk-std()-Y   --------> std deviation y-coordinate body jerk  in frequency domain
 56. fBodyAccJerk-std()-Z   --------> std deviation z-coordinate body jerk  in frequency domain
 57.  fBodyGyro-mean()-X    --------> mean x-coordinate gyroscope measurment measured in frequency domain
 58. fBodyGyro-mean()-Y    --------> mean y-coordinate gyroscope measurment measured in frequency domain
 59. fBodyGyro-mean()-Z    --------> mean z-coordinate gyroscope measurment measured in frequency domain
 60.  fBodyGyro-std()-X    --------> std deviation x-coordinate gyroscope  measurment measured in frequency domain
 61. fBodyGyro-std()-Y    --------> std deviation y-coordinate gyroscope measurment measured in frequency domain
 62. fBodyGyro-std()-Z    --------> std deviation z-coordinate gyroscope measurment measured in frequency domain
 63.  fBodyGyroJerk-mean()-X    --------> mean x-coordinate gyroscope jerk measurment measured in frequency domain
 64. fBodyGyroJerk-mean()-Y    --------> mean y-coordinate gyroscope jerk measurment measured in frequency domain
 65. fBodyGyroJerk-mean()-Z    --------> mean z-coordinate gyroscope jerk measurment measured in frequency domain
 66.  fBodyGyroJerk-std()-X    --------> std deviation x-coordinate gyroscope jerk  measurment measured in frequency domain
 67. fBodyGyroJerk-std()-Y    --------> std deviation y-coordinate gyroscope jerk measurment measured in frequency domain
 68. fBodyGyroJerk-std()-Z    --------> std deviation z-coordinate gyroscope jerk measurment measured in frequency domain
 69. fBodyAccMag-mean()		-------> mean magnitude for body acceleration measured in frequency domain 
 70. fBodyAccMag-std()      -------> std deviation magnitude for  body acceleration in frequency domain
 71. fGravityAccMag-mean()		-------> mean magnitude for gravity acceleration measured in frequency domain 
 72. fGravityAccMag-std()       -------> std deviation magnitude for  gravity acceleration in frequency domain
 73. fBodyBodyAccJerkMag-mean()		-------> mean magnitude for body jerk acceleration measured in frequency domain 
 74. fBodyBodyAccJerkMag-std()       -------> std deviation magnitude for  body jerk acceleration in frequency domain
 75. fBodyGyroMag-mean()		-------> mean magnitude for gyroscope measured in frequency domain 
 76. fBodyGyroMag-std()       -------> std deviation magnitude for  gyroscope measured in frequency domain
 77. fBodyBodyGyroJerkMag-mean()		-------> mean magnitude for gyroscope jerk measured in frequency domain 
 78. fBodyBodyGyroJerkMag-std()       -------> std deviation magnitude for  gyroscope jerk measured in frequency domain
 



[43] "     fBodyAcc-mean()-X     " "     fBodyAcc-mean()-Y     "
[45] "     fBodyAcc-mean()-Z     " "     fBodyAcc-std()-X      "
[47] "     fBodyAcc-std()-Y      " "     fBodyAcc-std()-Z      "
[49] "   fBodyAccJerk-mean()-X   " "   fBodyAccJerk-mean()-Y   "
[51] "   fBodyAccJerk-mean()-Z   " "   fBodyAccJerk-std()-X    "
[53] "   fBodyAccJerk-std()-Y    " "   fBodyAccJerk-std()-Z    "
[55] "    fBodyGyro-mean()-X     " "    fBodyGyro-mean()-Y     "
[57] "    fBodyGyro-mean()-Z     " "     fBodyGyro-std()-X     "
[59] "     fBodyGyro-std()-Y     " "     fBodyGyro-std()-Z     "
[61] "    fBodyAccMag-mean()     " "     fBodyAccMag-std()     "
[63] "fBodyBodyAccJerkMag-mean() " " fBodyBodyAccJerkMag-std() "
[65] "  fBodyBodyGyroMag-mean()  " "  fBodyBodyGyroMag-std()   "
[67] "fBodyBodyGyroJerkMag-mean()" "fBodyBodyGyroJerkMag-std() "
