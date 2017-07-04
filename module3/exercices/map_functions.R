
# Funcitonal programming with purrr ---------------------------------------


library(st4gi)
df <- pjpz09[,-c(1:2)]


# Ex1: Calculation of the mean -------------------------------------------------

#mean over all traits
map_dbl(.x = df, .f= mean)

#median over all traits
map_dbl(.x = df, .f= median)

#sd over all traits
map_dbl(.x = df, .f= sd)



# Ex.2: Percentile --------------------------------------------------------------

#Tradional calculation of the quantile
quantile(df[,1],probs =  0.05)

#5th quantile over all traits
map_dbl(.x = df, .f= quantile, probs = 0.05)




# Ex3. --------------------------------------------------------------------

# Find the mean of each column
map_dbl(.x = df, .f= mean)

# Find the mean of each column, excluding missing values
map_dbl(.x = df, .f= mean, na.rm = TRUE)

# Find the 5th percentile of each column, excluding missing values
map_dbl(.x = df, .f= quantile, probs = 0.05, na.rm = TRUE)












#Bibliografia
#https://educar.doncomos.com/como-calcular-percentiles
#http://www.dummies.com/programming/r/how-to-check-quantiles-in-r/






