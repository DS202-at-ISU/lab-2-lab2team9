# Importing the package
library(classdata)

# Getting and viewing the data from the Ames Homes dataset
data(ames)
class(ames)
head(ames)
View(ames)

print(range(ames$`Sale Price`))
