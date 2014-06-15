#############
# READ IN the DATASETS
################
x_test <- read.table("test/X_test.txt")
y_test <- read.table("test/y_test.txt")
sub_test <- read.table("test/subject_test.txt")

x_train <- read.table("train/X_train.txt")
y_train <- read.table("train/y_train.txt")
sub_train <- read.table("train/subject_train.txt")



###################################################################
# CREATING ONE DATA SET
##################################################
test_dataset <- cbind(x_test,y_test,sub_test)
train_dataset <- cbind(x_train,y_train,sub_train)
data_set <- as.data.frame(rbind(train_dataset,test_dataset))

#####################################################
## NAMING COLUMNS
##################################
features <- read.table("features.txt")
colnames(data_set) <- features[,2]
colnames(data_set)[562] <- c("activity")
colnames(data_set)[563] <- c("subject")

##################################################
# EXTRACTING MEAN AND STD DEV DATA. 
######################################################
mag_indices <- colnames(data_set)[grep("mean\\(|std\\(|subject|activity",names(data_set))]


tidy_dataset <- data_set[,mag_indices]

agdataset <- aggregate(tidy_dataset, list(subject=tidy_dataset$subject,activity=tidy_dataset$activity), mean)

################################
#CREATING DESCRIPTIVE NAMES FOR ACTIVITIES
##########################################################
names <- c(1:6)
values <- c("walking", "walking_upstairs", "walking_downstairs", "sitting", "standing", "laying")
lst <- list()
lst[names] <- values
agdataset[,2] <- as.data.frame(unlist(lst[agdataset[,2]]))

############################################################
# FORMAT DATA FRAME TO PRINT
###########################################################

name.width <- max(sapply(names(agdataset), nchar))
names(agdataset) <- format(names(agdataset), width=name.width, justify = "centre")
agdataset_formatted <- format(agdataset, width = name.width, justify="centre",col.names=TRUE)


write.table(agdataset_formatted[,1:68],file="tidy_data.txt", quote= FALSE, row.names=FALSE, sep="  ")






