##~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
##                            Derivative practice                           ----
##~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~




##................Practicing using the function D()...............


# create an expressiom
my_expressionp <- expression(5 * x^2)

# find the derivative of the expression with respect to x
my_derivative <- D(expr = my_expression, name = "x")
my_derivative

# evaluate derivative at x = 2.8
x <- 2.8

# evaluate
eval(my_derivative)


#....................another example with D()....................
#Find derivative with respect to x

my_derivative <- D(expr = expression(3.1 * x^4 - 28 * x), name = "x")

#Create and store a function
fx <- expression(x^2)

# find the derivative with respect to x

df_dx <- D(expr = fx, name = "x")
df_dx


#You try
derivative <- D(expr = expression(2 * z^3 - 10.5* z^2 + 4.1), name = "z")
dg_dz <- D(expr = derivative, name = "z")
derivative


derivative_2 <- D(expr = expression((2*y^3 + 1)^4 - 8*y^3), name = "y")
dg_dz <- D(expr = derivative_2, name = "y")
derivative_2

#find the slope of T(y at a range of values)
y <- seq(from = -0.4, to =2.0, by = 0.1)

# Evaluate the slope of T(y) at each of those values ----
eval(derivative_2)

#one small change

#plotting example

library(ggplot2)
library(palmerpenguins)

ggplot(data = penguins, aes(x = body_mass_g, y = flipper_length_mm)) + geom_point(aes(color = species)) + 
  scale_colour_manual(values = c("darkorange", "purple", "cyan4")) + labs(x = "Body mass (g)", 
                                                                       y = "flipper lenght (mm)",
                                                                       title = "palmer penguins size measurements",
                                                                       subtitle = "Palmer penguins")

# load libraries ----
library(tidyverse)
library(palmerpenguins)

# create plot ----
ggplot(data = penguins, aes(x = body_mass_g, y = flipper_length_mm)) +
  geom_point(aes(color = species)) +
  scale_color_manual(values = c("darkorange","purple","cyan4")) +
  labs(x = "Body mass (g)",
       y = "Flipper length (mm)",
       title = "Palmer penguin size measurements",
       subtitle = "Palmer Archipelago, Antarctice (2007 - 2009)",
       caption = "Collected by Dr. Kristen Gorman and colleagues at Palmer Station LTER") +
  facet_wrap(~island) +
  theme_minimal()
  
  