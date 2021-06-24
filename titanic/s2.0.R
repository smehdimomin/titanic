#break-up of gender and survial in training data.

#aggregating survival data
ms <- as.numeric(count(train %>% 
                         select(Sex,Survived) %>% 
                         filter(Survived == 1,Sex == 'male')))

fs <- as.numeric(count(train %>% 
              select(Sex,Survived) %>% 
              filter(Survived == 1,Sex == 'female')))
survive <- c(ms,fs)

#aggregating total data

m <- as.numeric(count(train %>% 
             select(Sex,Survived) %>% 
             filter(Sex == 'male')))
f <- as.numeric(count(train %>% 
             select(Sex,Survived) %>% 
             filter(Sex == 'female')))
tot <- c(m,f)

#making data frame to hold details

sex <- c('Male','Female','Male','Female')
value <- c(tot,survive)
condition <-c('Total','Total','Survival','Survival')
gen_breakup <- data.frame(sex,condition,value)

#ploting bar graph 

ggplot(gen_breakup, aes(fill=condition, y=value, x=sex)) + 
  geom_bar(position="dodge", stat="identity")+
  ylab('No. of passengers')+
  xlab('Sex')+
  ggtitle('Break-up of Gender with Total Passengers and Passsengers Survived')