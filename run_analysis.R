# ============================================================================================
# File: runanalysis.R
# ============================================================================================
# Reference: UCI Machine Learning Repository
# Dataset  : https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
# Title    : Human Activity Recognition Using Smartphones Data Set

library(dplyr)

# ============================================================================================
# 1. Loading Data
# ============================================================================================

# --------------------------------------------------------------------------------------------
# 1.1 - Downloading and extracting data
# --------------------------------------------------------------------------------------------

fileURL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"

fileDirZip <- "data"
fileNameZip <- paste(fileDirZip,"UCI HAR Dataset.zip",sep = "/")

fileDirData <- paste(fileDirZip, "UCI HAR Dataset", sep="/")

# Download zip file if does not exists and extracts its content
if (!file.exists(fileDirData)) {
  if (!file.exists(fileNameZip)) {
    if (!file.exists("data")) {
      dir.create("data")
    }
    download.file(fileURL,fileNameZip)
  }    
  unzip(fileNameZip, exdir=fileDirZip)
}

# --------------------------------------------------------------------------------------------
# 1.2 - Loading Raw Data
# --------------------------------------------------------------------------------------------

# Load labels of activities and features
dset.activity_labels <- read.table("data/UCI HAR Dataset/activity_labels.txt",      stringsAsFactors = FALSE, header = FALSE)
dset.features        <- read.table("data/UCI HAR Dataset/features.txt",             stringsAsFactors = FALSE, header = FALSE)

# Load test data
dset.test.subject    <- read.table("data/UCI HAR Dataset/test/subject_test.txt",    stringsAsFactors = FALSE, header = FALSE)
dset.test.X          <- read.table("data/UCI HAR Dataset/test/X_test.txt",          stringsAsFactors = FALSE, header = FALSE)
dset.test.Y          <- read.table("data/UCI HAR Dataset/test/Y_test.txt",          stringsAsFactors = FALSE, header = FALSE)

# Load train data
dset.train.subject   <- read.table("data/UCI HAR Dataset/train/subject_train.txt", stringsAsFactors = FALSE, header = FALSE)
dset.train.X         <- read.table("data/UCI HAR Dataset/train/X_train.txt",       stringsAsFactors = FALSE, header = FALSE)
dset.train.Y         <- read.table("data/UCI HAR Dataset/train/Y_train.txt",       stringsAsFactors = FALSE, header = FALSE)


# Change column names
names(dset.activity_labels) <- c("activityID","activity")
names(dset.features)        <- c("featureID","label")

columnNames <- make.names(dset.features$label,unique=TRUE,allow_ = TRUE)

names(dset.test.subject)  <- "subjectID"
names(dset.test.X)        <- columnNames
names(dset.test.Y)        <- "activityID"

names(dset.train.subject) <- "subjectID"
names(dset.train.X)       <- columnNames
names(dset.train.Y)       <- "activityID"

# ============================================================================================
# 2. Merge Data
# ============================================================================================

# Identify mean() and std() variables
mean_std_var <- grepl("mean[(][)]|std[(][)]",dset.features$label)

# --------------------------------------------------------------------------------------------
# 2.1 - Merge test data
# --------------------------------------------------------------------------------------------

# Fixed value 1 for observation Type "TEST"
obsType <- rep("TEST", nrow(dset.test.subject))

# Lookup Activity description
activity <- merge(dset.test.Y, dset.activity_labels, by="activityID")$activity

# Join test datasets
dset.test.join  <- cbind(dset.test.subject,
                         obsType,
                         activity,
                         dset.test.X[mean_std_var])

# --------------------------------------------------------------------------------------------
# 2.2 - Merge train data
# --------------------------------------------------------------------------------------------

# Fixed value 2 for observation Type "TRAIN"
obsType <- rep("TRAIN",nrow(dset.train.subject))

# Lookup Activity description
activity <- merge(dset.train.Y, dset.activity_labels, by="activityID")$activity

# Join train datasets
dset.train.join <- cbind(dset.train.subject,
                         obsType,
                         activity,
                         dset.train.X[mean_std_var])


# --------------------------------------------------------------------------------------------
# 2.3 - Merge test and train data
# --------------------------------------------------------------------------------------------

dset.final <- rbind(dset.test.join,
                    dset.train.join)

dset.final.avg <- select(tbl_df(dset.final), -obsType) %>%
                  group_by(subjectID,activity) %>%
                  summarize_each(funs(mean))

# ============================================================================================
# 3. Exporting tidy dataSet to a TXT file
# ============================================================================================

# Change variable names to descriptive form
names(dset.final)     <- c(names(dset.final)[1:3],     dset.features$label[mean_std_var])
names(dset.final.avg) <- c(names(dset.final.avg)[1:2], dset.features$label[mean_std_var])

fileNameTidy    <- "data/HAR_dataset.txt"
fileNameTidyAvg <- "data/HAR_dataset_avg.txt"

# Export datasets in TXT format
write.table(dset.final,     file = fileNameTidy,    row.names=FALSE)
write.table(dset.final.avg, file = fileNameTidyAvg, row.names=FALSE)



print("Generated files:")
print(paste(getwd(),fileNameTidy,sep="/"))
print(paste(getwd(),fileNameTidyAvg,sep="/"))

