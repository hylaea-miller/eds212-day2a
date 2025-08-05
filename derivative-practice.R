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
derivative_2
