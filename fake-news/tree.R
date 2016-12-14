library(rpart)

fake <- read.csv('data/fake.csv', stringsAsFactors = T)

fake <- fake[-1]

tree <- rpart(formula = type ~., data = fake, )
plot(tree)
