library(reshape2)


#Load in the data
X_test <- read.table("UCI HAR Dataset/test/X_test.txt", quote="\"")
X_train <- read.table("UCI HAR Dataset/train/X_train.txt", quote="\"")
y_test <- read.table("UCI HAR Dataset/test/y_test.txt", quote="\"")
y_train <- read.table("UCI HAR Dataset/train/y_train.txt", quote="\"")
features <- read.table("UCI HAR Dataset/features.txt", quote="\"")
subject_train <- read.table("UCI HAR Dataset/train/subject_train.txt", quote="\"")
subject_test <- read.table("UCI HAR Dataset/test/subject_test.txt", quote="\"")
activity_labels <- read.table("UCI HAR Dataset/activity_labels.txt", quote="\"")

#Input column names
colnames(X_train) <- features[,2]
colnames(X_test) <- features[,2]
colnames(subject_train) <- 'subject'
colnames(subject_test) <- 'subject'
colnames(y_train) <- 'activity'
colnames(y_test) <- 'activity'

#Input subject id
X_train <- cbind(subject_train,X_train)
X_test <- cbind(subject_test,X_test)
#Input activity index
X_train <- cbind(y_train,X_train)
X_test <- cbind(y_test,X_test)

#Now, we will merge the test and training files
comb <- rbind(X_train,X_test)

#Extract only the measurements on the mean and std for each measurement
meanstd <- comb[,grep('mean\\(\\)|std\\(\\)',colnames(comb))]
meanstd <- cbind(comb[,1:2],meanstd)

#Use descriptive activity names to name the activities in the dataset
mgsub <- function(pattern, replacement, x, ...) {
  if (length(pattern)!=length(replacement)) {
    stop("pattern and replacement do not have the same length.")
  }
  result <- x
  for (i in 1:length(pattern)) {
    result <- gsub(pattern[i], replacement[i], result, ...)
  }
  result
}

newactivity <- mgsub(activity_labels$V1,activity_labels$V2,meanstd$activity)
meanstd$activity <- newactivity

#Appropriately label the data set with descriptive variable names
#Already completed earlier.

newdata <- melt(meanstd,id=c('subject','activity'))
newdata2 <- dcast(newdata,subject+activity ~ variable, mean,na.rm=T)

write.table(newdata2, 'GetData_Proj1.txt',row.names=F)


