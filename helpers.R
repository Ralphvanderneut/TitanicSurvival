# Note: percent map is designed to work with the counties data set
# It may not work correctly with other data sets if their row order does 
# not exactly match the order in which the maps package plots counties

library(rpart)

train <- read.csv("data/train.csv")

my_tree <- rpart(Survived ~ Sex + Age + Parch, 
                 data = train, 
                 method ="class")


PredictSurvival <- function(sex, age, parch){
  values <- data.frame(Sex = sex, Age = age, Parch=parch)
  Prediction <- predict(my_tree, values, type = "class");
  return(Prediction[[1]])
}

