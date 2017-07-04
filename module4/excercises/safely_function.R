# Pass the readLines() function to safely(), and assign the output to safe_readLines.
# Use safe_readLines() on the string "http://example.org" to read the example homepage HTML file.
# Use safe_readLines() on "http://asdfasdasdkfjlda", a nonsense web address that shouldn't be found.

# Create safe_readLines() by passing readLines() to safely()
safe_readLines<-safely(readLines)

# Call safe_readLines() on "http://example.org"
safe_readLines("http://example.org")

# Call safe_readLines() on "http://asdfasdasdkfjlda"
safe_readLines("http://asdfasdasdkfjlda")


