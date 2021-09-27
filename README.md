# MechaCar Statistical Analysis

## Linear Regression to Predict MPG
### Output from the linear regression

![Linear Regression](https://user-images.githubusercontent.com/85590155/134832086-bf3b9745-d11c-4237-ad9e-d04d11bb3803.PNG)

### Summary
- According to the results (p-value), **vehicle length** and **ground clearance** are statistically unlikely to provide random amounts of variance to the linear model.   In other words, the **vehicle length** and **ground clearance** have a significant impact on miles per gallon (mpg). The intercept is also statistically significant.  This could mean that **vehicle length** and **ground clearance** may need scaling or transforming to help improve the predictive power of the model.  Or,  it may mean that there are other variables that can help explain the variability mpg that have not been included in the model.
- The p-value of the linear regression is 5.35x10<sup>-11</sup>, which is much smaller than the assumed significance level of 0.05. Therefore, we can state that there is sufficient evidence to reject the null hypothesis, which means that the slope of the linear model is not zero.
- The coefficient of determination (Adjusted R-squared value) for this model is 0.6825.  This indicates a modeate strength of correlation, which means this linear model predicts the mpg of MechaCar prototypes relatively well.  Although there are probably other factors not captured that contribute to the mpg.

## Summary Statistics on Suspension Coils
### Summary statistics across all manufacturing lots

![Total Summary](https://user-images.githubusercontent.com/85590155/134838164-a507bd6c-705e-4031-aec4-c0eb5b27e0d5.PNG)

### Summary statistics among individual manufacturing lots

![Lot Summary](https://user-images.githubusercontent.com/85590155/134838216-623d8761-90b8-4ba6-86e1-447b4f9cc3fc.PNG)

### Summary
- The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch.  From the total summary we can see that the variance across all lots (62.29356) is within the design specifications.  However, when looking at the individual lots, Lot 3 is out of specification with a variance of 170.28612.  Futhermore, the varaince greatly exceeds the variance of Lot 1 and Lot 2 (0.97959 and 7.46939 respectively).  Therefore, more examination is neccessary to understand the production issues with Lot 3.  With maybe suspending production until issues are resolved.

## T-Tests on Suspension Coils
### T-Tests across all manufacturing lots

![Ttest Total](https://user-images.githubusercontent.com/85590155/134839925-65538587-c5c7-4acd-8959-c1f2efc7f1e7.PNG)

### T-Tests among individual manufacturing lots
#### Lot 1

![Ttest Lot 1](https://user-images.githubusercontent.com/85590155/134840033-622f9947-9f0a-47ed-aa1a-ff26615fdec7.PNG)

#### Lot 2

![Ttest Lot 2](https://user-images.githubusercontent.com/85590155/134840052-2c1b0f0c-3f64-4c9f-a3c4-787072c8b75f.PNG)

#### Lot 3

![Ttest Lot 3](https://user-images.githubusercontent.com/85590155/134840069-7dcea98a-1c12-40bc-8155-66ea2f260a2f.PNG)

### Summary
- The sample mean for all manufacturing lots is 1498.78.  Futhermore, the p-value = 0.06028, which is above our significance level.  Therefore, we fail to reject the null hypothesis.  In other words, the PSI across all manufacturing lots is **not** statistically different from the population mean of 1,500 PSI.
- For Lot 1, the sample mean is 1500 with a p-value = 1.  Again, we fail to reject the null hypothesis.
- For Lot 2, the sample mean is 1500.2 with a p-value = 0.6072.  Again, we fail to reject the null hypothesis.
- For Lot 3, the sample mean is 1496.14 with a p-value = 0.04168.  In this case, we reject the null hypothesis.  In other words, the PSI for Lot 3 is statistically different from the population mean of 1,500 PSI.  The T-Tests supports our findings from the above analysis.
