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
# Assignment
Go through the vignette for readr. 
