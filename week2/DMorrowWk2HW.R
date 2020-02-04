#Destinee Morrow 
#BIFX 551 Homework Week 2
#This function will take a temperature in Fahrenheit,
#convert it to Celsius and then convert to Kelvin

FahrToKelvin <- function(temp){
  if (typeof(temp) == "character"){
    print("Please enter valid temperature")
    return()
  }
  kelvin <- ((temp - 32) * (5/9)) + 273.15
  return(kelvin)
}

FahrToKelvin(38)
FahrToKelvin(200)
FahrToKelvin('thirty')

#Using summary function of the iris dataset
#I found interesting that the average width or length is no greater than 6 cm 
#This dataset is also from 1936 
