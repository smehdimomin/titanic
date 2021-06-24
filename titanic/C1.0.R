table(is.na(train$Age))

train$istrain <- TRUE
test$istrain <- FALSE
test$Survived <- NA

fulldata <- rbind(train,test)


age.median <- median(fulldata$Age,na.rm = TRUE)
fulldata[is.na(fulldata$Age),"Age"] <- age.median 


table(is.na(fulldata$Fare))
fare.median <- median(fulldata$Fare,na.rm = TRUE)
fulldata[is.na(fulldata$Fare), "Fare"] <- fare.median


table(fulldata$Embarked)
fulldata[fulldata$Embarked =='' ,'Embarked'] <-'S'

train <- fulldata[fulldata$istrain == TRUE,]
test <- fulldata[fulldata$istrain == FALSE,]

table(is.na(train))
