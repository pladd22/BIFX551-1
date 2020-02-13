#Find a csv or txt file, download it, read it into a dataframe, 
#use summary() to describe it, and create a labeled graph. 
#Submit as an .R file. It should run and produce your graph.

#Download data to data frame
url <- "https://raw.githubusercontent.com/CSSEGISandData/2019-nCoV/master/daily_case_updates/02-09-2020_1030.csv"
download.file(url, "nCoV_9feb2020")
nCoV_df <- read.csv("nCoV_9Feb2020", sep = ",", header = TRUE)
#Pull out numeric columns
nCoV_num <- nCoV_df[4:6]
#Aggregate sum of regions
new_nCoV <- aggregate(nCoV_num, by = list(nCoV_df$Country.Region), FUN = sum)
#Barplot
barplot(new_nCoV$Confirmed ~ new_nCoV$Group.1, 
        xlab = "Region", ylab = "Confirmed Cases (Logarithmic)", 
        main = "Regional Confirmed Cases of 2019-nCoV as of 10:30am 9Feb2020", 
        log = "y", las = 2, space = 1)
