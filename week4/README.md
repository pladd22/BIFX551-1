# Tidyr
Tidyr is great for tidy data and making tables longer and wider with pivot_longer and pivot_wider.
```{r}
#pivot_wider takes a pair of columns that are acting as 'labels' and 'values' and turns them into
#a tidy dataframe with named columns and rows that represent the same type of data
pop.csv <- download.file(url = 'https://raw.githubusercontent.com/cemalec/BIFX551/master/week3/SYB62_1_201907_Population%2C%20Surface%20Area%20and%20Density.csv','pop.csv')

library(readr)
pop_df <- read_csv('pop.csv',skip=1)

library(tidyr)
wide_pop_df <- pivot_wider(data = pop_df, names_from = 'Series',values_from = 'Value')

#pivot_longer collapses several columns into two containing the column names as well as the values in those columns.
#This is typically used to make the data more presentable.
original_pop_df <- pivot_longer(data = wide_pop_df, 
                                cols = c('Population mid-year estimates (millions)':'Population density'),
                                names_to = 'Series',
                                values_to = 'Value')
```

# Dplyr
Dplyr is for general data manipulation. The main functions in dplyr are select, arrange, filter, mutate, and summarize. Dplyr is also most people's first encounter with the 'pipe' operator, or %>%. The pipe operator essentially places the object to the left of the pipe as the first argument of the function to the right of the pipe. So x %>% f(y) = f(x,y)
```{r}
#filter pulls rows out of a dataframe

#arrange places rows in a different order

#select pulls columns out of a dataframe, can also be used to rearrange columns

#mutate creates calculated columns from other data columns

#mutate's friend transmute creates a dataframe with only the calculated columns

#summarize performs aggregating functions on groups of data. It most often must be paired with group_by to reach
#its full potential.
```
# Assignment

Find **Three** biological data sources that you can use for your first project. 
- For each write about why you find the dataset interesting, anticipated difficulties, and a question you would like to answer. 
- Perform a precursory exploration (types and amount of different variables and a simple graph) for each dataset.
- Hand in your results in an R Markdown document.
