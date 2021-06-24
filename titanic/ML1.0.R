train_clean <- train %>% select(Survived,Sex,Pclass,Age)
test_clean <- test %>% select(PassengerId,Pclass,Sex,Age)
train_clean <- mutate(train_clean, Survived = factor(Survived), Pclass =  as.numeric(Pclass) , Age = as.numeric(Age))
                      
tree <- rpart(Survived ~., data = train_clean)
prp(tree)

Prediction.of.test.data <- predict(tree, test_clean ,type = 'class')
Prediction.of.test.data

prediction.df <- data.frame(test_clean$PassengerId,Prediction.of.test.data)
prediction.df

write.csv(prediction.df,'result_clean_1.0.csv')
