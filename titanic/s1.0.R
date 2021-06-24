#installing necessary packages.

install.packages('GGally')
install.packages('randomForest')
install.packages('rpart.plot')
install.packages('viridis')
install.packages('hrbrthemes')
install.packages('ggrepel')
install.packages("reshape2")

#for ML modelling 

install.packages('FSelector')
install.packages('rpart')
install.packages('caret', dependencies = TRUE)
install.packages('rpart.plot')
install.packages('data.tree')
install.packages('caTools')


#importing necessary packages.


library(tidyverse)
library(ggplot2)
library(dplyr)
library(GGally)
library(rpart)
library(rpart.plot)
library(randomForest)
library(viridis)
library(hrbrthemes)
library(ggrepel)
library(reshape2)

#importing ML modelling packages

library(caTools)
library(data,tree)
library(caret)
library(rpart.plot)
library(rpart)
library(FSelector)

#importing data into R environment

test <- read.csv('test.csv')
train <- read.csv('train.csv')
gender <- read.csv('gender_submission.csv')



Sys.getenv()

#exploring data

dim(train)
str(train)
head(train)
colnames(train)

