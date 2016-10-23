library(ggplot2)
library(data.table)

train <- fread(unzip("train_users_2.csv.zip"))
test <- fread(unzip("test_users.csv.zip"))

