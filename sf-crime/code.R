library(dplyr)
library(data.table)

train <- fread("train.csv")
test <- fread("test.csv")

data <- merge(train, test, all = TRUE,
              by = c('Dates', 'DayOfWeek', 'Address', 'X', 'Y', 'PdDistrict'))

# number of observations
(n <- nrow(data))

dim(data)
dimnames(data)

head(data, n = 3)
str(data)

# convert dates to date format
data$Dates <- as.Date(data$Dates, format = "%Y-%m-%d %H:%M:%S")

# Days of week
data$DayOfWeek <- as.factor(data$DayOfWeek)
table(data$DayOfWeek)

# Districts
table(data$PdDistrict)
data$PdDistrict <- as.factor(data$PdDistrict) # ALLCAPS -> Capitalized

# Categories
table(data$Category)
data$Category <- as.factor(data$Category)

# Descripts
data$Descript[56409:56439]
#  [1] "ROBBERY ON THE STREET, STRONGARM"                 
#  [2] "STOLEN AUTOMOBILE"                                
#  [3] "VEHICLE, RECOVERED, AUTO"                         
#  [4] "THREATS AGAINST LIFE"                             
#  [5] "GRAND THEFT FROM LOCKED AUTO"                     
#  [6] "LOST PROPERTY"                                    
#  [7] "PETTY THEFT OF PROPERTY"                          
#  [8] "PETTY THEFT FROM LOCKED AUTO"                     
#  [9] "LOST PROPERTY"                                    
# [10] "SOLICITS TO VISIT HOUSE OF PROSTITUTION"          

# Descripts
data$Resolution[56409:56439]
table(data$Resolution)
data$Resolution <- as.factor(data$Resolution)
