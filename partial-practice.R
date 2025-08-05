library(tidyverse)
library(ggplot2)


#defining a function

eql <- function(x) {3 * x^2 +4}

# create value to evaluate function over

my_data_range <- data.frame(x = c(1, 100))

# plot as a continuous curve over a specific range using 'geom_function()'

ggplot(data = my_data_range, aes(x = x)) +
  geom_function(fun = eq1)

# Example plotting derivatives
# Create new function
ct <- function(t) { t^3}

my_data_range <- data.frame(t = c(-5, 5))

#plot it
ggplot(data = my_data_range, aes(x=t)) + geom_function(fun = ct)

#find derivative
dc_dt <- D(expr = expression(t^3), name = "t")

dc_dt_fun <- function(t) { 3 * t^2}

ggplot(data = my_data_range, aes(x = t)) +
  geom_function(fun = ct, color = "red") +
  geom_function(fun = dc_dt_fun, color ="blue")

# partial derivatives
# create the expression
f_xyz <- D(expr = f_xyz, name = "x")
df_dx

df_dy <- D(expr = f_xyz, name = "z")
df_dz
  
