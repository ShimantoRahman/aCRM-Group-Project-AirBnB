install.packages("olsrr")

library(olsrr)

listings_summary <- read.csv("./data/listings_summary.csv")

model <- lm(price ~ neighbourhood_group + neighbourhood + room_type + minimum_nights + number_of_reviews + reviews_per_month + availability_365, data = listings_summary)

ols_step_backward_p(model)
ols_step_forward_p(model)
ols_step_both_p(model)

options(max.print=999999)
summary(model)

