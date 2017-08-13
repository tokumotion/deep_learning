require(tensorflow)
x <- tf$placeholder(tf$float32, shape(NULL, 11L))

library(h2o)
localH2O = h2o.init()
localH2O = h2o.init(ip = "localhost", port = 54321, nthreads = -1)

# Let's build a logistic regression interactively using the H2O browser.

