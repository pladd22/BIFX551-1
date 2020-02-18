# ggplot2
The 'gg' in ggplot refers to a 'grammar of graphics,' and much like real grammar there are really more exceptions than rules. The basic structure of a ggplot plot is:
- Specify data and aesthetic elements
- Specify a geom_
- Specify axes and annotations
All of these are added to the graph as different 'layers' each layer is added through addition so most plot will look like
```{r}
g <- ggplot(data,aes(x,y)) + geom_something() #and maybe 
      + scale_something() + coord_something()
```
# Assignment
