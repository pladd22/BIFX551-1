# File importing with .csv and .txt

download.file(url,destfile) can be used to download a file from the internet
```{r}
download.file(url,"my_file.csv")
df <- read.csv('my_file.csv',sep = ",", header=TRUE)
#Beware stringsAsFactors = True
```

You can read text files two ways
```{r}
download.file(url,"my_file.txt")
df <- read.delim('my_file.txt',sep="",header=TRUE)

#OR if you want a few lines at a time
f <- file('my_file.txt')
open(f)
readLines(f,n=1)
close(f)
```

# Basic Plotting

```{r}
# Scatter plot
plot(mtcars$mpg,
      mtcars$hp,
      xlab="Miles per Gallon",
      ylab = "Horse Power",
      main="HP as a function of MPG")

# Bar plot
barplot(Sepal.Length ~ Group.1,
        data=mean_df,
        col = c("red","blue","green"),
        xlab="Species",
        ylab="Sepal Length",
        main="Mean Spepal Length by Species")

# Histogram
hist(mtcars$mpg,
      main='mtcars MPG histogram',
      xlab = 'MPG',
      ylab = 'Frequency',
      breaks=5,
      col="lightgreen",
      border="darkgreen")

#Boxplot
boxplot(iris$Sepal.Length ~ iris$Species, 
         xlab="Species",
         ylab="Sepal Length",
         main="Iris Sepal Length by Species", 
         col=c("bisque1","bisque3","bisque4"))
```
# Assignment
Go through the vignette for readr. 
Find a csv or txt file, download it, read it into a dataframe, use summary() to describe it, and create a labeled graph. Submit as an .R file. It should run and produce your graph.
