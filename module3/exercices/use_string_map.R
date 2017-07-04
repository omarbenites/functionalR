#Assign the result from the previous exercise to the variable models

#Use map and the coef() function to extract the coefficients from each model, 
#and save it in the variable coefs

#Use map and the string shortcut to extract the slope wt element from coefficients vectors


# Save the result from the previous exercise to the variable models
models <- map(cyl, ~ lm(mpg ~ wt, data = .))

# Use map and coef to get the coefficients for each model: coefs
coefs <- map(models, coef)

# Use string shortcut to extract the wt coefficient 
map(coef, "wt")