# Load the dplyr package
library(dplyr)

# Import and read csv file as a data frame
MechaCar_table <- read.csv(file='MechaCar_mpg.csv', check.names=F, stringsAsFactors = F)

# Perform multiple linear regression with mpg as the dependent variable
lm(mpg ~ vehicle_length +  + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=MechaCar_table)

# Determine the p-value and the r-squared value for the linear regression model
summary(lm(mpg ~ vehicle_length +  + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=MechaCar_table))

# p-value: 5.35e-11
# R-squared:  0.6825