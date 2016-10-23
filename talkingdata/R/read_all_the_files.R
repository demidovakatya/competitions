# ------
# reads all the files
# ------

options(scipen = 99999)
Sys.setlocale(category = "LC_ALL", locale = "utf8")

setwd("/Users/mac/Documents/talkingdata-mobile-user-demographics")
source("R/_read_file.R")

# "app_labels.csv"
app.labels <- read.file("data/app_labels.csv")

# "gender_age_train.csv"
gender.age <- read.file("data/gender_age_train.csv")
gender.age$gender <- as.factor(gender.age$gender)
gender.age$age <- as.numeric(gender.age$age)
gender.age$group <- as.factor(gender.age$group)

# "label_categories.csv"
label.categories <- read.csv('data/label_categories.csv')

# "phone_brand_device_model.csv"
# phone.brand.device.model <- read.file("data/phone_brand_device_model.csv")
# translation <- read.file("data/phone_names_translation.csv")
phones <- read.csv("data/phones.csv")
# phone.brand.device.model[, 2:3] <- lapply(phone.brand.device.model[, 2:3], as.factor)

# ------ later
# # "app_events.csv"
# app.events <- read.file("app_events.csv") # 989.2 MB!
# # "events.csv"
# events <- read.file("events.csv")
# ------


rm(read.file)
