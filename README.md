# GettingDataCourseProject

This project contains the following items:

- README.md - file that describes the steps for analysing the dataset and how to load the
  output
- run_analysis.R - script for analysing the data
- CodeBook.md file that describes the output
- tidydata.txt  - output of the analysis in txt format


## Description of Analysis
1.  Reading and Merging data

1.1 Reading data
    First I read all the different components of the data text files into dataframes.
    -  The test and training data (x_test, x_train)
    -  The test and training labels (y_test, y-train)
    -  The features (column headings)
    -  The descriptive activity labels
    -  The subject identifiers (subject_test, subject_train)
    
1.2 For reach of the data objects I set the labels 
    -  The features as column headings for the main data set
    -  The labels named Activity
    -  The subjects named Subject
    
1.3 Merge data
    The next step is to merge the data
    - First merging the Activity labels with the main data (for test and training sets)
    - Second merging the Subjects with the main data
    - Last merge step was to join the training and the test data
    
2.  Subset data
    The next step was to subset the data and only extract the mean variables, and including   
    Subject and Activity
    
3.  Descriptive Activity names
    The next step was to change the activity labels to more descriptive labels

4.  Cleaning up variables
    Next to clean up the variables.  This was done by removing brackets and other characters,
    and changing the abbreviated variables to more descriptive ones:
    -  Acc - Acceleration
    -  Gyro - AngularVelocity
    -  mag - magnitued
    
5. Create tidy dataset and write to file
   A tidy dataset in wide format (for each of the 9 subjects, for each activity - 54 rows, 68
   columns)  was created by averaging the data Per subject per activity.
   The file was written to a text file for submission.
   To read the text file, the read.csv command can be used with sep=" "
