library(plyr)

# reading the data - values, set labels, features and labels
test <- read.table("./data/UCI HAR Dataset/test/X_test.txt")
train <- read.table("./data/UCI HAR Dataset/train/X_train.txt")
trainlabel <- read.table("./data/UCI HAR Dataset/train/y_train.txt")
testlabel <- read.table("./data/UCI HAR Dataset/test/y_test.txt")
features <- read.table("./data/UCI HAR Dataset/features.txt")
labels <- read.table("./data/UCI HAR Dataset/activity_labels.txt")
testsubject <- read.table("./data/UCI HAR Dataset/test/subject_test.txt")
trainsubject <- read.table("./data/UCI HAR Dataset/train/subject_train.txt")


# set the colnames
colnames(test) <- features$V2
colnames(train) <- features$V2
colnames(testlabel) <- c("Activity")
colnames(trainlabel) <- c("Activity")
colnames(testsubject) <- c("Subject")
colnames(trainsubject) <- c("Subject")

# merge test data and labels, and train data and train labels
test1 <- cbind(test,testlabel)
train1 <- cbind(train,trainlabel)
test2 <- cbind(test1,testsubject)
train2 <- cbind(train1,trainsubject)

# merge test and train datasets
data <- join(test2, train2)

#extract mean and std dev.
means <- grep("mean\\()",names(data), value=TRUE)
std <- grep("std",names(data), value=TRUE)
meanstddata <- data[,c(means,std,Subject,Activity)]

# descriptive activity names
meanstddata$Activity <- mapvalues(meanstddata$Activity,from = labels$V1, to = as.character(labels$V2))

# Descriptive variable names
colnames(meanstddata) <- gsub("\\()","",names(meanstddata))
colnames(meanstddata) <- gsub("-"," ",names(meanstddata))
colnames(meanstddata) <- gsub("Acc","Acceleration",names(meanstddata))
colnames(meanstddata) <- gsub("Gyro","AngularVelocity",names(meanstddata))
colnames(meanstddata) <- gsub("Mag","Magnitude",names(meanstddata))

# Variable averages per Subject per Activity
tidy <- ddply(meanstddata, .(Subject, Activity),numcolwise(mean))

# Write to file 
write.table(tidy, "tidydata.txt", row.names=FALSE)






