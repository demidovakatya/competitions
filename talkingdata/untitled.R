library(dplyr)
library(caTools)
options(scipen = 99999)
Sys.setlocale(category = "LC_ALL", locale = "utf8")

setwd("/Users/mac/Documents/talkingdata-mobile-user-demographics")
files <- list.files(pattern = "zip$")
sapply(files, unzip)
rm(files)

read.file <- function(filename) {
    df <- read.table(filename,
                     # header = T,
                     stringsAsFactors = F,
                     sep = ',')
    colnames(df) <- df[1,]
    df <- df[-1,]
    df
}

# "app_events.csv"
app.events <- read.file("app_events.csv") # 989.2 MB!
# "app_labels.csv"
app.labels <- read.file("app_labels.csv")
# "events.csv"
events <- read.file("events.csv")
# "gender_age_train.csv"
gender.age.train <- read.file("gender_age_train.csv")
gender.age.train$gender <- as.factor(gender.age.train$gender)
gender.age.train$age <- as.numeric(gender.age.train$age)
gender.age.train$group <- as.factor(gender.age.train$group)
# "label_categories.csv"
label.categories <- read.file("label_categories.csv")
# "phone_brand_device_model.csv"
phone.brand.device.model <- read.file("phone_brand_device_model.csv")
phone.brand.device.model[, 2:3] <- lapply(phone.brand.device.model[, 2:3], as.factor)
# # "sample_submission.csv"
# sample.sub <- read.file("sample_submission.csv")
# sample.sub[, 2:13] <- lapply(sample.sub[, -1], as.numeric)
# # "gender_age_test.csv"
# gender.age.test <- read.file("gender_age_test.csv")

df <- merge(gender.age.train, phone.brand.device.model)

spl <- caTools::sample.split(df$group)
train <- df[spl == 1, ]
test <- df[spl == 0, ]

library(rpart)
tree <- rpart(group ~ ., train)
