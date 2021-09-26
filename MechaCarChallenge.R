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

# Import and read csv file as a data frame
Suspension_table <- read.csv(file='Suspension_Coil.csv', check.names=F, stringsAsFactors = F)

# Create data frame to get the mean, median, variance, and standard deviation of the suspension coil's PSI column
total_summary <- Suspension_table %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI), .groups = 'keep') 

# creates data frame to group each manufacturing lot by the mean, median, variance, and standard deviation of the suspension coil's PSI
lot_summary <- Suspension_table %>% group_by(Manufacturing_Lot) %>% summarize(Mean = mean(PSI), Median = median(PSI),Variance = var(PSI), SD = sd(PSI))
