==================================================================
Getting and cleaning data course project script readme
Version 1.0
==================================================================
SCRIPT STEPS OR ALGORITHM:

1. I first read in various files of test (x_test.txt, y_test.txt, subject_test.txt) and train (x_train.txt, y_train.txt and subject_train.txt) data as data frames.
2. Use cbind to merge x_test.txt, y_test.txt and subject_test.txt into one test_dataset. Similarly create train_dataset.
3. use rbind to merge test_dataset and train_dataset into one dataset called "data_set"
4. From this data_set extract all columns with "mean" and "std" in their column name into a dataframe "tidy_dataset"
5. use the aggregate function on the "tidy_dataset" dataframe to create mean for each variable based on "subject" and "activity" of the data frame. output this to a data frame "agdataset"
6. update the activity variable column contents of the "agdataset" data frame to descriptive variable names.
7. format and print the contents of agdataset to file "tidy_data.txt"
