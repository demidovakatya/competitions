library(dplyr)
library(lubridate)
library(ggplot2)

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


table(fake$published)
table(fake$crawled)
# TODO
# preprocess
fake <- mutate(fake, published = ymd_hms(published))
qplot(x = published, data = fake, fill = type, bins = 20)

fake <- mutate(fake, crawled = ymd_hms(crawled))
qplot(x = crawled, data = fake, fill = type, bins = 20)

# Add weekdays
fake <- mutate(fake, published.weekday = weekdays(published))
fake$published.weekday <- as.factor(fake$published.weekday)
qplot(x = published.weekday, data = fake, fill = type)
fake <- mutate(fake, crawled.weekday = weekdays(crawled))
fake$crawled.weekday <- as.factor(fake$crawled.weekday)
qplot(x = crawled.weekday, data = fake, fill = type)

# fake <- mutate(fake, time.between.crawl.publ = hours(as.integer(crawled - published)))


table(fake$author)
# TODO:
# Remove stuff like:
# Jason Ditz
# Jason Ditz | Antiwar.com
fake <- mutate(fake, author.subd = tolower(sub(' \\| .*| \\(.*\\)', '', author)))
fake$author.subd <- as.factor(fake$author.subd) # 59 levels less

table(fake$title)

# TODO
# Extract text from html

remove.html.tags <- function(s) {
  return(gsub("<.+>", " ", s, ignore.case = T))
}

fake <- mutate(fake, title.text = remove.html.tags(title),
                     text.text = remove.html.tags(text),
                     author.text = remove.html.tags(author))

# TODO
# add word count for text, title, author
