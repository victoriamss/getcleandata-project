library(plyr)
library(dplyr)

if (!file.exists("data")) {
  dir.create("data")
}
fileurl<- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(fileurl, "./data/files.zip")
unzip("./data/files.zip", exdir="./data")

#Get and merge the data from the observations
test_data<- read.table("./data/UCI HAR Dataset/test/X_test.txt")
train_data<- read.table("./data/UCI HAR Dataset/train/X_train.txt")
mydata<- join(test_data, train_data, type="full") #function from dplyr package

#Get names of all variables and turning into columnnames
features<- read.table("./data/UCI HAR Dataset/features.txt")
varnames<-as.character(features[,2])
colnames(mydata)<-varnames

#Extract relevant columns from mydata (mean and std for each measurement)
mydata2<- mydata[,c(1:6, 41:46, 81:86, 121:126, 161:166, 201:202, 214:215, 227:228, 
                    240:241, 253:254, 266:271, 345:350, 425:430, 503:504, 516:517, 529:530, 542:543)]
                    #Here I selected the variables with "mean" or "std" in their name

#Get vector with subject of each observation:
subject_test<- read.table("./data/UCI HAR Dataset/test/subject_test.txt")
subject_train<- read.table("./data/UCI HAR Dataset/train/subject_train.txt")
subjects<- as.factor(c(subject_test[,1], subject_train[,1]))

#Get vector with activity of each observartion
testlabels<- read.table("./data/UCI HAR Dataset/test/y_test.txt")
trainlabels<- read.table("./data/UCI HAR Dataset/train/y_train.txt")
activities<- as.factor(c(testlabels[,1], trainlabels[,1]))
Activities<-mapvalues(activities, from = c(1,2,3,4,5,6), to = c("walking", 
      "walking upstairs", "walking downstairs", "sitting", "standing", "laying"))
      #function from plyr package

#Add Activities and subjects as the first columns of dataset and arrange by them
dataset<-data.frame()
dataset<-cbind(Activities, subjects, mydata2)
dataset2<- arrange(dataset,Activities,subjects)

#Calculate the average for each activity and subject
meandata<- ddply(dataset2, .(Activities, subjects), numcolwise(mean))

#Save the new data frame as a .txt document
write.table(meandata, "./data/newdata.txt", row.names = FALSE)
