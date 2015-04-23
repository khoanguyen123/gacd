require(dplyr)

# Read feature (e.g measurement) descriptions
features_df <- read.table("features.txt")

# Read activity labels
act_df <- read.table("activity_labels.txt")

# Read test data sets
xtest_df <- read.table("test/X_test.txt")
subject_test_df <- read.table("test/subject_test.txt")
ytest_df <- read.table("test/y_test.txt")
ytest_df[,1] <- act_df[ytest_df[,1],2]

# Combine them into one data frame
test_df <- cbind(ytest_df, xtest_df)
test_df <- cbind(subject_test_df, test_df)

# Remove test data sets from environment
rm(xtest_df)
rm(subject_test_df)
rm(ytest_df)

# Read train data sets
xtrain_df <- read.table("train/X_train.txt")
subject_train_df <- read.table("train/subject_train.txt")
ytrain_df <- read.table("train/y_train.txt")
ytrain_df[,1] <- act_df[ytrain_df[,1],2]

# Combine them into one data frame
train_df <- cbind(ytrain_df, xtrain_df)
train_df <- cbind(subject_train_df, train_df)

# Rm train data sets from environment
rm(xtrain_df)
rm(subject_train_df)
rm(ytrain_df)

## Merge test and train data frames into one jumbo data frame
df <- rbind(train_df, test_df)

# Build column names
col_names <- c("Subject", "Activity", as.character(features_df[,2]))


# and assign these names to our data frame, removing "funky" characters
# from the names or dplyr functions will choke
names(df) <- gsub("[(),-]", "", col_names)

# We have a problem: select{dplyr} considers some column names as duplicate
# Fortunately, we don't really need these columns
# So just remove them now
udf <- df[,!duplicated(names(df))]
rm(df)

tbl <- tbl_df(udf)
rm(udf)

xtb <- tbl %>% 
        select(Subject, Activity, contains("std"), contains("mean")) %>%
        group_by(Subject, Activity) %>%
        summarise_each(funs(mean(., na.rm = TRUE)), matches("std|mean"))

print(xtb)
write.table(xtb, file = "result.txt")
