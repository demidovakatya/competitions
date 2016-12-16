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
fake <- mutate(fake, author.subd = tolower(sub(' \\| .*| \\(.*\\)', '', author)))
fake$author.subd <- as.factor(fake$author.subd) # 59 levels less

table(fake$published)
table(fake$crawled)
# TODO
# preprocess
fake <- mutate(fake, published = ymd_hms(published))
fake <- mutate(fake, crawled = ymd_hms(crawled))
# Add weekdays
fake <- mutate(fake, published.weekday = weekdays(published))
fake <- mutate(fake, crawled.weekday = weekdays(crawled))
fake <- mutate(fake, published.weekday = weekdays(published))
fake <- mutate(fake, crawled.weekday = weekdays(crawled))
fake$crawled.weekday <- as.factor(fake$crawled.weekday)
fake$published.weekday <- as.factor(fake$published.weekday)

