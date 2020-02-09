#  Description: Sample plot of ncov using leaflets
#  Author: Daniel Vogel
#  Date: 2/5/2020

# Install required packages for leaflet map and plotting
#install.packages("leaflet")
#install.packages("sp")
#install.packages("tidyverse")
library(leaflet)
library(sp)
## for reading .csv files
library(tidyverse)

## load data files
ncov_outside_hubei<-read_csv("ncov_outside_hubei.csv")
attach(ncov_outside_hubei)

print("summary of data")
print(summary(ncov_outside_hubei))
## 
##  Plot an age histogram
##
hist(strtoi(ncov_outside_hubei$age),
     main="Ages of 2019 CoronaVirus Patients",
     xlab="Age",
     ylab="Density",
     col="darkmagenta",
     freq=FALSE
)
# Pause to continue
#
readline("Plotting Reported Cases Per Date (shown in Viewer)")
plot.new()
dates_df<-data.frame(table(ncov_outside_hubei$date_confirmation))
dates_df$DD<-with(dates_df,as.integer(substr(Var1,1,2)))
print(dates_df)
xrange<- range(dates_df$DD)
yrange<- range(dates_df$Freq)
plot(xrange,yrange,
     main="Confirmed Cases in Jan 2020",
     xlab="Jan 12 - Jan 31",
     ylab="# Confirmed")
# Add a line
x_dates<-as.integer(substr(dates_df$Var1,1,2))
y_freq<-dates_df$Freq
lines(x_dates,y_freq, type="b")

# Pause to continue
#
readline("Plotting global patient locations (shown in Viewer)")

m <- leaflet(data = ncov_outside_hubei) %>% 
  setView(lng=114.27, lat=30.59, zoom=3) %>% 
  addProviderTiles(providers$Esri.WorldStreetMap)%>%  ##shows city names as well in English
  #addProviderTiles(providers$Esri.WorldTopoMap)%>%   ##shows country names in English
  #addTiles() %>%   ## default OpenStreet tiles which display country names in many languages
  addCircles(color="red",radius=1)


# show the map with plotted data
print(m)

