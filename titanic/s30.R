#break-up of survival based on Embarked.

sc <- as.numeric(count(train %>% 
                         select(Embarked,Survived) %>% 
                         filter(Survived == 1,Embarked == 'C')))
ss <- as.numeric(count(train %>% 
                         select(Embarked,Survived) %>% 
                         filter(Survived == 1,Embarked == 'S')))
sq <- as.numeric(count(train %>% 
                         select(Embarked,Survived) %>% 
                         filter(Survived == 1,Embarked == 'Q')))
s_emb <- c(sc,ss,sq)
tc <- as.numeric(count(train %>% 
                         select(Embarked,Survived) %>% 
                         filter(Embarked == 'C')))
ts <- as.numeric(count(train %>% 
                         select(Embarked,Survived) %>% 
                         filter(Embarked == 'S')))
tq <- as.numeric(count(train %>% 
                         select(Embarked,Survived) %>% 
                         filter(Embarked == 'Q')))
t_emb <- c(tc,ts,tq)
Port <-c('Cherbourg','Queenstown','Southampton','Cherbourg','Queenstown','Southampton')
val <- c(t_emb,s_emb)
cond <- c(rep('Totol',3),rep('survial',3))
emb <- data.frame(Port,cond,val)

#ploting bar graph 

ggplot(emb, aes(fill=cond,y=val, x=Port)) + 
  geom_bar(position="dodge", stat="identity")+
  ylab('No. of passengers')+
  xlab('PORT')+
  ggtitle('Break-up of survival based on embarkment')