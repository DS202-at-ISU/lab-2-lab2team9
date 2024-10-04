# Importing the package
library(classdata)

# Getting and viewing the data from the Ames Homes dataset
data(ames)
class(ames)
head(ames)
View(ames)

# Prints the range for the Sale price
print(range(ames$`Sale Price`))

# Makes a histogram for the sale price with 100 bins
hist(ames$`Sale Price`, breaks = 100)

library(ggplot2)
library(dplyr)

filtered_houses <- ames$`Sale Price` %>% filter(ames$`Sale Price` >= 100000 & ames$`Sale Price` <= 1000000)

ggplot(filtered_houses, aes(x = ames$`Sale Date`, y = ames$`Sale Price`)) + geom_point()
