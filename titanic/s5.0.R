sce  <- table(train %>% select(Pclass,Embarked,Survived) %>%  filter(Survived == 1))
sce <- melt(sce)
sce <-sce %>% 
        slice(-c(1,2,3))




temp  <- table(train %>% select(Pclass,Embarked,Survived))
temp <- melt(temp)
temp <- temp %>% 
  slice(-c(1,2,3,13,14,15))

#ploting bar graph 

ggplot(temp, aes(fill=Embarked,y=value, x=Pclass)) + 
  geom_bar(position="dodge", stat="identity")+
  ylab('No. of passengers')+
  xlab('CLASS')+
  ggtitle('Break-up of survival based on class of traveller')