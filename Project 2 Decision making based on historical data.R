

dataset<- c(3, 4, 6, 8, 10)

mean_value <- mean(dataset)

mean_value

variance <- var(dataset)

variance


dataset1<- c(10, 12, 14, 16, 18, 20)

mean_value <- mean(dataset1)

mean_value

standard_deviation <- sd(dataset1)

standard_deviation

# Install and load the e1071 package
install.packages("e1071")
library(e1071)

# Calculate skewness using Pearson's method
skewness_value <- skewness(dataset1, type = 3)

skewness_value

historical_data <- read.csv("C:/Users/benny/OneDrive/Desktop/R studio practice/dataG2.csv", sep=",")

historical_data

S=historical_data[,5]-historical_data[,3]  
S

I_1 =min(historical_data) # use figure I_1 (see attached)
I_1
I_2 = max(historical_data) # use figure I_2 (see attached)
I_2
