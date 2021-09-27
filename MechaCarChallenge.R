# Load the dplyr package
library(dplyr)

# Import and read csv file as a data frame
MechaCar_table <- read.csv(file='MechaCar_mpg.csv', check.names=F, stringsAsFactors = F)

# Perform multiple linear regression with mpg as the dependent variable
lm(mpg ~ vehicle_length +  + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=MechaCar_table)

# Determine the p-value and the r-squared value for the linear regression model
summary(lm(mpg ~ vehicle_length +  + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=MechaCar_table))

# p-value: 5.35e-11
# R-squared: 0.6825

# Import and read csv file as a data frame
Suspension_table <- read.csv(file='Suspension_Coil.csv', check.names=F, stringsAsFactors = F)

# Create data frame to get the mean, median, variance, and standard deviation of the suspension coil's PSI column
total_summary <- Suspension_table %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI), .groups = 'keep') 

# Create data frame to group each manufacturing lot by the mean, median, variance, and standard deviation of the suspension coil's PSI
lot_summary <- Suspension_table %>% group_by(Manufacturing_Lot) %>% summarize(Mean = mean(PSI), Median = median(PSI),Variance = var(PSI), SD = sd(PSI))

# Determine if the PSI across all manufacturing lots is statistically different from the population mean of 1,500 pounds per square inch
t.test(Suspension_table$PSI, mu = 1500)

# Determine if the PSI for each manufacturing lot is statistically different from the population mean of 1,500 pounds per square inch
Lot1 = subset(Suspension_table, Manufacturing_Lot == 'Lot1')
Lot2 = subset(Suspension_table, Manufacturing_Lot == 'Lot2')
Lot3 = subset(Suspension_table, Manufacturing_Lot == 'Lot3')

t.test(Lot1$PSI, mu = 1500)
# p-value = 1
t.test(Lot2$PSI, mu = 1500)
# p-value = 0.6072
t.test(Lot3$PSI, mu = 1500)
# p-value = 0.04168
