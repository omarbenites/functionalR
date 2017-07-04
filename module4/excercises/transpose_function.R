library(purrr)

#We now have output that contains the HTML for each of the two URLs on which readLines() 
# was successful and the error for the other. But the output isn't that easy to work with, since the results and 
#errors are buried in the inner-most level of the list.
#purrr provides a function transpose() that reshapes a list so the inner-most level becomes 
#the outer-most level. In otherwords, it turns a list-of-lists "inside-out". Consider the following list:



urls <- list(
 
  example = "http://example.org",
  
  rproj = "http://www.r-project.org",
  
  asdf = "http://asdfasdasdkfjlda"
  
)

# Define save_readLines() and html
safe_readLines <- safely(readLines)
html <- map(urls, safe_readLines)

# Examine the structure of transpose(html)
str(transpose(html))

# One way: Extract the results: res
res <- transpose(html)[["result"]]

#Second way: Extract the results:res
trans<- transpose(html)
#result
res <- trans[["result"]]
# Extract the errors: errs
errs <- trans[["error"]]

