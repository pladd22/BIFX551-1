#Destinee Morrow BIFX 551 Wk3 homework
#data to help predict forest fires in Australia using meterological data
download.file('https://archive.ics.uci.edu/ml/machine-learning-databases/forest-fires/forestfires.csv',"forestfires.csv")
df <- read.csv('forestfires.csv', sep = ',', header = TRUE)
View(df)
summary(df)
#Average wind speed in km/h is 4.018
#Average temp is only 18 degrees celsius - which seems very low to me
#The most forest fires occur in August 
library(ggplot2)
ggplot(df, aes(temp,area)) + geom_line(color="red") + xlab('Temperature in Celsius') + ylab('Area of Forest Burned in Ha') + ggtitle('Area of Burned Forest as a function of Temperature Change')
