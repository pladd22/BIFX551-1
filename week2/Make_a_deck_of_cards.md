# Make a deck of cards dataframe

This is the code for making a deck of cards dataframe we used in class this week.

```{r}
face <- c('ace','two','three','four','five','six','seven','eight','nine','ten','Jack','Queen','King')
suit <- c('heart','diamond','spade','club')
value <- 1:13
cards_df <- data.frame(face = rep(face,4),
                       suit = rep(suit,13),
                       value = rep(value,4))
```

And a function that draws a card from the deck

```{r}
draw_a_card <- function(cards_df){
  card <-cards_df[sample(52,size=1),c(face,suit)]
  return(card)
}
```
