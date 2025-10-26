
install.packages("tidyverse")
library(tidyverse)
itc255 = read.csv("https://raw.githubusercontent.com/RaihanaAhmadi/R-Project/88a85b6e64249ab62251719444c7d08f480fcf0f/Raihana_Ahmadi_itc255.csv")
head(itc255)
colnames(itc255)

#Creating a ggplot
install.packages("ggplot2")
library(ggplot2)

ggplot(data = itc255) + 
  geom_point(mapping = aes(x = Height.cm., y = Age))

#Scatter
ggplot(data = itc255, mapping = aes(x = Gender, y = Age, color = Sport)) +
  geom_point()
         
ggplot(data = itc255)

ggplot(data = itc255, mapping = aes(x = Gender, y = Height.cm.)) +
  geom_point(color = "blue")+
  geom_smooth(color = "red")
theme_classic()+
  ggtitle("Height vs Gender")+
  xlab("Gender")+
  ylab("Height")
ggplot(data = itc255, mapping = aes(x = "LevelOfSatisfaction", y = "Gender")) +
  geom_point()+
  geom_smooth()

ggplot(data = itc255,mapping =  aes(x = Height.cm., y = Age)) +
  geom_point(color = "blue") +
  geom_smooth(method = "lm", color = "red") +
  ggtitle("Age vs Height") +
  xlab("Height (cm)") +
  ylab("Age (years)") +
  theme_classic()
  
#Barchart
ggplot(data = itc255, mapping =  aes(x = Level.of.Satisfaction, fill = Gender)) +
  geom_bar(position = "dodge")

#Line Plots
ggplot(data = itc255, mapping = aes(x = Age, y = Height.cm.)) +
  geom_line() +
  geom_point()

#Histogram
ggplot(data = itc255, mapping =  aes(x = Age)) +
  geom_histogram(binwidth = 2, fill = "skyblue", color = "black")

#BoxPlot
ggplot(data = itc255,mapping =  aes(x = Gender, y = Height.cm., fill = Gender)) +
  geom_boxplot()



