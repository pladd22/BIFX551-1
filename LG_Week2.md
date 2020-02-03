# Assignment 1 
> Write your own function to convert between any two units. The function should take two arguments, a number, and an argument specifying the direction of the conversion. Include your function with documentation string in an R-markdown file
```
f_c_con <- function(temp, dir) {
  if(dir > 0) {
    celcius <- ((temp-32)/1.8)
    return(celcius)
  }
  if(dir < 0 ){
    farenheit <- ((temp*1.8)+32)
    return(farenheit)
  }
  if(dir == 0){
    print("Please enter either a positive or negative number.")
  }
  if((typeof(temp) == "character") | (typeof(dir) == "character")){
    print("That's a string, please enter an integer.")
  }
}
```
## f_c_con(temp,dir)

### Conversion from farenheit to celcius

## Description

f_c_con takes a number and converts it to either farenheit or celcius using the formulas: 
celcius = ((farenheit temperature - 32)/1.8)  
farenheit = (celcius temperature \*1.8)+32

## Usage

f_c_con(temp,dir)

## Arguments

temp | the temperature you wish to input. 
dir | the current unit for temperature. May be positive or negative. (See details)

## Details
A positive _dir_ value will convert forwared, from farenheit to celcius. A negative value will convert the reverse, from celcius to farenheit.

## Examples
\# Find the temperature in celcius if it is 42 degrees farenheit
```
 f_c_con(32,1)
  [1] 0
  ```
\# Find the temperature in farenheit if it is 42 degrees celcius
 ```
 f_c_con(32,-1)
  [1] 89.6
```

# Assignment 2
> Load a builtin dataframe, you can see the list with data(). Use the summary function to write a short description of some interesting aspects of the dataframe. Write your results in an R-markdown file.
## ToothGrowth

# The Effect of Vitamin C on Tooth Growth in Guinea Pigs

The built in data frame "ToothGrowth" is a chart tracking tooth growth in guinea pigs given a supplement of either ascorbic acid (vitamin c, shown as *VC*) or orange juice (shown as *OJ*) in varying amounts. Each animal recieved the dose for an unknown period of time through an unknown means (see *Details*).

# Usage

The data frame is easily called with data(ToothGrowth).

# Format

There are three columns, *len*, *supp*, and *dose*, corresponding to tooth length (unit unknown), supplement type (ascorbic acid or orange juice) and dosage (milligrams/day). There are 60 observations, tracking ten lengths per dosage per supplement type - i.e 10 lengths corresponding to 0.5mg/day of ascorbic acid, 10 to 1.0mg/day, and 10 2.0mg/day. The same is true for the animals recieving orange juice.

# Details

It is important to note that neither the chart nor the documentation mentions the units of tooth length, number of total animals, or length of experiment. Following the **Source** and **References** leads to the published article, locked behind a paywall. Given the data alone, it is impossible to know if the data tracks only 6 seperate animals over 10 observations, or 60, and shows the total growth over an unknown timeframe. 

# Summary(ToothGrowth)

Using summary(ToothGrowth) it is possible to see that the smallest length is 4.20, which corresponds to the minimum dose of ascorbic acid (0.5mg/day) (seen in observation 1). The largest is 33.90, (seen in observation 23),  corresponding to a maximum dose of ascorbic acid (2.0mg/day). Both the smallest and largest length belong to observations of ascorbic acid supplements.

# Article

Crampton, E. W. (1947). The growth of the odontoblast of the incisor teeth as a criterion of vitamin C intake of the guinea pig. *The Journal of Nutrition*, 33(5), 491–504.
