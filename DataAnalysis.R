remotes::install_github("heike/classdata")
library(classdata)
library(tidyverse)

data(ames)
class(ames)
head(ames)
view(ames)

style.type <- levels(ames$Style)
occ.type <- levels(ames$Occupancy)
neigh.type <- levels(ames$Neighborhood)

print.simple.list(style.type)
print.simple.list(occ.type)
print.simple.list(neigh.type)

print(class(ames$Style))
print(class(ames$`Parcel ID`))
print(class(ames$AC))
print(class(ames$`Sale Date`))
print(class(ames$YearBuilt))
print(class(ames$`Sale Price`))

print(range(ames$`Sale Price`))
print(range(na.omit(as.numeric(ames$Bedrooms))))
print(range(na.omit(as.numeric(ames$`TotalLivingArea (sf)`))))

hist(ames$`Sale Price`, breaks = 100)
count(ames,ames$`Sale Price`)


ames$`Sale Price` <- as.numeric(ames$`Sale Price`)

sales_fitered <- filter(ames, !is.na(ames$`Sale Price`) & !is.na(ames$Bedrooms) & `Sale Price`>= 100000 & `Sale Price`<=1000000)
hist(sales_fitered$`Sale Price`, breaks = 100)


ggplot(sales_fitered, aes(x = `Bedrooms`, y = `Sale Price`)) + geom_point()
