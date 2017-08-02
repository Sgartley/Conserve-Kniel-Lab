Conservelmono <- read.csv("../Conserve Data/Conserve Lmono.csv")
library(tidyr)
df <- gather(response, key ='factor', value = 'response')
Conservelmon <- read.csv('../Conserve Data/Conserve Lmono.csv', header = FALSE)
Conservelmono2 <- read.csv('../Conserve Data/Conserve Lmono2.csv', header = FALSE)
Conservelmono2 <- read.csv("../Conserve Data/Conserve Lmono2.csv")
Conservelmono3 <- Conservelmono2[-56:-72,]

ggplot(data=Conservelmono3,aes(x=Site.Code,y=MPN))+geom_boxplot()

ggplot(data=Conservelmono3, aes(x=Month, y=MPN, color=Site.Code))+geom_point()

ggplot(data=Conservelmono3, aes(x=Month, y=MPN, color=Site.Code))+geom_line()

ggplot(data=Conservelmono3,aes(x = Month, y=MPN, color=Site.Code)) + geom_boxplot() +
facet_grid(~ Site.Code) + labs(title = "L. mono MPN over time",x = "Month", y= "MPN/1000mL") 

Conservelmono4<-Conservelmono3[-1:-11,]

ggplot(data=Conservelmono4,aes(x = Month, y=MPN, color=Site.Code)) + geom_boxplot() +
  facet_grid(~ Site.Code) + labs(title = "L. mono MPN over time",x = "Month", y= "MPN/1000mL")
