
run_analysis <- function(){

## Loading dplyr and plyr packages
library(dplyr)
library(plyr)
library(tidyr)

## Loading all relevant raw data into workspace and formatting to that dplyr can use it
ytest <- tbl_df(read.table("test/y_test.txt", stringsAsFactors = FALSE)) #Activity codes for test data 
subtest <- tbl_df(read.table("test/subject_test.txt", stringsAsFactors = FALSE)) #Subject codes for test data
xtest <- tbl_df(read.table("test/x_test.txt", stringsAsFactors = FALSE)) # Observations for test data
ytrain <- tbl_df(read.table("train/y_train.txt", stringsAsFactors = FALSE)) #Activity codes for training data
subtrain <- tbl_df(read.table("train/subject_train.txt", stringsAsFactors = FALSE)) #Subject codes for training data
xtrain <- tbl_df(read.table("train/x_train.txt", stringsAsFactors = FALSE)) # observations for training data

features <- tbl_df(read.table("features.txt", stringsAsFactors = FALSE)) # Column headers for test and training data 
labels <- tbl_df(read.table("activity_labels.txt", stringsAsFactors = FALSE)) # Activity to code index table 


##Adding test and training data columns using the features table
names(xtest) <- features$V2
names(xtrain) <- features$V2

## Renaming columns for joining
names(ytest)[1] <- "activity_code"
names(subtest)[1] <- "subject_code"
names(ytrain)[1] <- "activity_code"
names(subtrain)[1] <- "subject_code"
names(labels) <- c("activity_code", "activity_name")

## Adding the subjects and activity codes to the test and training dataset
newtest <- tbl_df(cbind(xtest, ytest, subtest))
newtrain <- tbl_df(cbind(xtrain, ytrain, subtrain))

## Add identifier to the end of each data set to identify test or training record
newtest  <- mutate(newtest, experiment_type = "test")
newtrain  <- mutate(newtrain, experiment_type = "train")


totaldata <- rbind(newtest, newtrain) #Merge the two datasets to get a combined table
totaldata <- tbl_df(join(totaldata, labels)) #Adding activity labels
        
totaldata <- 
        totaldata %>%
        select(contains("mean()"), contains("std()"), subject_code:activity_name) %>%  #Selecting columns with only means and standard deviations
        gather(measure_type, measure, -(subject_code:activity_name)) %>%  #Tidy the data so that each column only displays one variable
        arrange(subject_code, activity_name, measure_type) #ordering the data set

## Created a separate, grouped data set summarized by the average measure (mean or standard dev)
## for each subject (person), activity and measurement type.
datasummary <- summarise(group_by(totaldata, subject_code, activity_name, measure_type), average_of_measure = mean(measure))

write.table(datasummary,file = "summary.txt", row.name = FALSE) # print to file
}


