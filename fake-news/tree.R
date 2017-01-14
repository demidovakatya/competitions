library(rpart)

tree <- rpart(formula = type ~ published + published.weekday + language + country + spam_score +
                  replies_count + participants_count + likes + comments + shares,
              data = fake)
rpart.plot::prp(tree)

tree.word.count <- rpart(formula = type ~ author_words + text_words + title_words,
              data = fake)
rpart.plot::prp(tree.word.count)
