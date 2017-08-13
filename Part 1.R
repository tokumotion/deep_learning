# En terminal: jupyter notebook

# Let's begin with a simple example of linear regression where we need to 
# determine the relationship between men's height (in cms) and weight (in kgs). 
# The following sample data represents the height and weight of 10 random men:

data <- data.frame('height' = c(131, 154, 120, 166, 108, 115, 158, 144, 131, 
                                112),
                   'weight' = c(54, 70, 47, 79, 36, 48, 65, 63, 54, 40))

# Linear regression model:

lm_model <- lm(weight ~ height, data)
plot(data, col = 'red', main = 'Relationship between height and weight', 
     cex = 1.7, pch = 1, xlab = 'Height in cms', ylab = 'Weight in kgs')
abline(lm(weight ~ height, data))

# In semi-supervised models, the learning is primarily initiated using labeled
# data (a smaller quantity in general) and then augmented using unlabeled data
# (a larger quantity in general).

