
# Walk functions ----------------------------------------------------------

# Define list of functions
f <- list(Normal = "rnorm", Uniform = "runif", Exp = "rexp")

# Define params
params <- list(
  Normal = list(mean = 10),
  Uniform = list(min = 0, max = 5),
  Exp = list(rate = 5)
)

# Assign the simulated samples to sims
sims <- invoke_map(f, params, n = 50)

# Use walk() to make a histogram of each element in sims
res <- sims %>% walk(hist)


# walk2 function ----------------------------------------------------------

breaks_list <- list(
  Normal = seq(6,16,0.5),
  Uniform = seq(0,5,0.25),
  Exp =  seq(0,1.5,0.1)
)

walk2(.x = sims, .y = breaks_list, .f = hist)





