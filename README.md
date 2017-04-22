# UCI HAR - Getting and Cleaning Data

The goal of this project is to extract the dataset [UCI HAR](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip) in its raw format and to prepare a tidy dataset that can be used for later analysis.

Additional information of the dataset is avaliable at [Human Activity Recognition Using Smartphones](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones).

This project is composed by the following files:

- README.md
- run_alaysis.R
- CodeBook.md
- HAR_dataset.txt
- HAR_dataset_avg.txt


### README.md

Overview of the project content.


### run_alaysis.R

This file works by itself and there is no need of any other file. This R script can be downloaded and executed that all the necessary steps of generating the tidy datasets will be performed.

The script has some comments identifying each step of the process as follows.

#### 1. Loading Data

The R script uses the current working directory that can be obtained by the function `getwd()`. A new folder `./data` is created and all the necessary files are written in this new folder.

#### 1.1 - Downloading and extracting data

The dataset is downloaded from [UCI HAR](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip) and writtend in the file `./data/UCI HAR Dataset.zip`. The downloaded file content is extracted to the folder `./data/UCI HAR Dataset`.

|File/Folder|Description|
|-----------|-----------------------------------------------------------|
|./data/UCI HAR Dataset.zip|Downloaded dataset|
|./data/UCI HAR Dataset|Folder with the extracted files from the dataset|

#### 1.2 - Loading Raw Data

Loads the following files into memmory:

|File                    |Description                                     |
|------------------------|------------------------------------------------|
|./data/UCI HAR Dataset/activity_labels.txt|Links the class labels with their activity name.|
|./data/UCI HAR Dataset/features.txt       |List of all features.                           |
|./data/UCI HAR Dataset/test/subject_test.txt|Each row identifies the subject who performed the test for each window sample. Its range is from 1 to 30.|
|./data/UCI HAR Dataset/test/X_test.txt    |Test set values                                 |
|./data/UCI HAR Dataset/test/Y_test.txt    |Test activity values                            |
|./data/UCI HAR Dataset/test/subject_train.txt|Each row identifies the subject who performed the train for each window sample. Its range is from 1 to 30.|
|./data/UCI HAR Dataset/test/X_train.txt   |Training set values                             |
|./data/UCI HAR Dataset/test/Y_train.txt   |Training activity values                        |


The content of the file **features.txt** represents the variable names (columns) of the files **X_test.txt**  and **X_train.txt**. These variable names are assigned to the datasets in memmory.

The content of the file **activity_labels.txt** represents the activity labels of each observation (row) of the files **Y_test.txt**  and **Y_train.txt**. These activity labels are assigned to the datasets in memmory.



#### 2. Merge Data
#### 2.1 - Merge test data

The content of the files **subject_test.txt**, **X_test.txt**, **Y_test.txt** are merged along with the additional variable (column) **obsType** identifying the observations as "TEST".

#### 2.2 - Merge train data

The content of the files **subject_train.txt**, **X_train.txt**, **Y_train.txt** are merged along with the additional variable (column) **obsType** identifying the observations as "TRAIN".

#### 2.3 - Merge test and train data

Both of the train and test datasets are merged into a final dataset.

The final dataset is then replicated and the average of all numeric variables are calculated grouped by subject and activity.


#### 3. Exporting tidy dataSet to a TXT file

Generate files `./data/HAR_Dataset.txt` and `./data/HAR_Dataset_avg.txt` that represents the final tidy dataset and the average calculated.

|File          |Description                                    |
|--------------|-----------------------------------------------|
|./data/HAR_dataset.csv    |Final tidy dataset generated.|
|./data/HAR_Dataset_avg.csv|Final tidy dataset generated with the average of each numeric variable.|

### CodeBook.md

CodeBook that describes the variables, the data, and any transformations or work performed to clean up the data.

### HAR_dataset.txt

Tidy dataset generated in **run_alaysis.R** ready to be used for analysis.

### HAR_dataset_avg.txt

Tidy dataset generated in **run_alaysis.R** ready to be used for analysis. This dataset refers to the average values of the **HAR_dataset.txt** dataset.