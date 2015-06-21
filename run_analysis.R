setwd("~/R/Getting Data/Project/UCI HAR Dataset")

# Read in all the files required
features=read.table("features.txt")
activity_labels <- read.table("activity_labels.txt")
X_train=read.table("train/X_train.txt")
X_test=read.table("test/X_test.txt")
Y_train=read.table("train/y_train.txt")
Y_test=read.table("test/y_test.txt")
subject_train=read.table("train/subject_train.txt")
subject_test=read.table("test/subject_test.txt")

# Create a data set containing all the measurement records, subsetting only the required columns.
X_total=rbind(X_train,X_test)
setnames(X_total, colnames(X_total), as.character(features[,2]))
X_subset<-X_total[c(grep("mean\\(\\)",colnames(X_total)),grep("std\\(\\)",colnames(X_total)))]
X_subset=data.table(X_subset)

# Create a data set containing all the activity records.
Y_total=rbind(Y_train,Y_test)
colnames(Y_total)="activity"

# Create a data set containing all the subject records.
subject_total=rbind(subject_train,subject_test)
colnames(subject_total)="subject"

# Extend the measurement data set to include the subject and activity in descriptive form.
X_subset$activity=activity_labels[Y_total[,],2]
X_subset$subject=subject_total[,1]

# Create the tidy data set by taking the mean of each measurement across each subset and write to file.
X_tidy_means <- X_subset[,lapply(.SD,mean),by=list(subject,activity)][order(subject,activity)]
write.table(X_tidy_means, "tidy_data.txt", row.names = FALSE)
