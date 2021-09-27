# MechaCar Statistical Analysis

## Linear Regression to Predict MPG
### Output from the linear regression

![Linear Regression](https://user-images.githubusercontent.com/85590155/134832086-bf3b9745-d11c-4237-ad9e-d04d11bb3803.PNG)

### Summary
- According to the results (p-value), **vehicle length** and **ground clearance** are statistically unlikely to provide random amounts of variance to the linear model.   In other words, the **vehicle length** and **ground clearance** have a significant impact on miles per gallon (mpg). The intercept is also statistically significant.  This could mean that **vehicle length** and **ground clearance** may need scaling or transforming to help improve the predictive power of the model.  Or,  it may mean that there are other variables that can help explain the variability mpg that have not been included in the model.
- The p-value of the linear regression is 5.35x10<sup>-11</sup>, which is much smaller than the assumed significance level of 0.05. Therefore, we can state that there is sufficient evidence to reject the null hypothesis, which means that the slope of the linear model is not zero.
- The coefficient of determination (Adjusted R-squared value) for this model is 0.6825.  This indicates a modeate strength of correlation, which means this linear model predicts the mpg of MechaCar prototypes relatively well.  Although there are probably other factors not captured that contribute to the mpg.
