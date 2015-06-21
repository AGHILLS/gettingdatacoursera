---
title: "README"
author: "Alan Hills"
date: "20 June 2015"
output: html_document
---
This script takes a set of untidy data from the UCI HAR dataset and returns a processed data set, averaging the measurements of selected fields by both subject and activity.

This is a list of files required to run the script:

* features.txt - A list of the variable names assigned to the measurement data. 
* activity_labels.txt - A list coverting the activity number to a decriptive form.

* train/X_train.txt - The measurement data in the training set.
* train/y_train.txt - The list of activities in numeric form associated with each record in the training measurement data set.
* train/subject_train.txt - The list of activities in numeric form associated with each record in the training measurement data set.

* test/X_test.txt - The measurement data in the test set.
* test/y_test.txt - The list of activities in numeric form associated with each record in the test measurement data set.
* train/subject_train.txt - The list of subjects in numeric form associated with each record in the training measurement data set.
