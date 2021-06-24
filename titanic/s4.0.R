#break-up of class of traveller and survival.

sc1 <- as.numeric(count(train %>% 
                         select(Pclass,Survived) %>% 
                         filter(Survived == 1,Pclass == 1)))
sc2 <- as.numeric(count(train %>% 
                          select(Pclass,Survived) %>% 
                          filter(Survived == 1,Pclass == 2)))
sc3 <- as.numeric(count(train %>% 
                          select(Pclass,Survived) %>% 
                          filter(Survived == 1,Pclass == 3)))

tc1 <- as.numeric(count(train %>% 
                          select(Pclass,Survived) %>% 
                          filter(Pclass == 1)))
tc2 <- as.numeric(count(train %>% 
                          select(Pclass,Survived) %>% 
                          filter(Pclass == 2)))
tc3 <- as.numeric(count(train %>% 
                          select(Pclass,Survived) %>% 
                          filter(Pclass == 3)))

v <- c(sc1,sc2,sc3,tc1,tc2,tc3)
con <- c(rep('Survived',3),rep('Total',3))
class_tr <- c('First','Second','Third','First','Second','Third')
class_df <- data.frame(class_tr,con,v)


#ploting bar graph 

ggplot(class_df, aes(fill=con,y=v, x=class_tr)) + 
  geom_bar(position="dodge", stat="identity")+
  ylab('No. of passengers')+
  xlab('CLASS')+
  ggtitle('Break-up of survival based on class of traveller')
