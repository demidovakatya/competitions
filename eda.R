library(dplyr)
library(ggplot2)

options(scipen = 99999)
Sys.setlocale(category = "LC_ALL", locale = "utf-8")

setwd("/Users/mac/Documents/talkingdata-mobile-user-demographics")
source("R/read_all_the_files.R")

# ------------------------------------------------
# ------------------------------------- gender.age
head(gender.age)
colSums(is.na(gender.age))

# ------------- gender.age$group
table(gender.age$group)
qplot(group, data = gender.age)

# ------------- gender.age$age
table(gender.age$age)
qplot(age, data = gender.age, bins = 50)
gender.age[gender.age$age <= 10, ]
# 10 observations with age <= 10

# ------------- gender.age$age+gender
(count.gender.age <- table(gender.age$age, gender.age$gender))
qplot(age, data = gender.age, colour = gender, fill = gender)

# ------------------------------------------------
# ------------------------------------- categories

# ------------------------------------- app.labels
head(app.labels)
app.labels %>% is.na %>% colSums

# ------------------------------- label.categories
label.categories %>% head
label.categories %>% tail
dim(label.categories)
# so, there are 929 categories

count.categories <- merge(label.categories,
                          data.frame(table(app.labels$label_id)),
                          by.x = 'label_id', by.y = 'Var1',
                          all = T)
colnames(count.categories) <- c('label_id', 'category', 'count')

count.categories %>% is.na %>% colSums
count.categories[is.na(count.categories)] <- 0
count.categories %>% is.na %>% colSums
sum(count.categories$count) # [1] 459943

# ------------------------------------- app.labels + label.categories
# merged.app.labels <- merge(app.labels, label.categories, all.x = T)#[-1]
# merged.app.labels %>% is.na %>% colSums
# rm(label.categories)

# ------------------------------------------------
# ----------------------------------------- phones

head(phones)
phones %>% is.na %>% colSums

(brands.count <- phones$brand %>% table %>% data.frame)
models.count <- phones$device_model %>% table %>% data.frame
