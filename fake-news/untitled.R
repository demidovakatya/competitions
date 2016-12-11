library(dplyr)
library(lubridate)

fake <- read.csv('data/fake.csv', stringsAsFactors = T)
raw.fake <- fake

head(fake)
colnames(fake)

# remove uuid
fake <- fake[-1]

# -------
# EDA
table(fake$type) # target

table(fake$ord_in_thread)
hist(fake$ord_in_thread)

table(fake$author)
# TODO:
# Remove stuff like:
# Jason Ditz
# Jason Ditz | Antiwar.com

table(fake$published)
table(fake$crawled)
# TODO
# preprocess
mutate(fake, published = ymd_hms(published))
mutate(fake, crawled = ymd_hms(crawled))

# -------
# rpart
# tree <- rpart(formula = ., data = fake, )
