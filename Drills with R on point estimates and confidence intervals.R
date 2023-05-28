#1.a.Based on a descriptive graphic, describe the shape of the sample data distribution. 
#Find and interpret point estimates of the population mean and standard deviation.

Chicago_data <- read.csv("C:/Users/benny/OneDrive/Desktop/R studio practice/Chicago.dat.txt", sep="")

Chicago_data

# descriptive graphic
hist(Chicago_data$income, breaks = 10, col = "lightblue", main = "Distribution of Annual Incomes", xlab = "Income (in thousands of dollars)")


#Point Estimates:
# Calculate sample mean
mean_income <- mean(Chicago_data$income)

mean_income


# Calculate sample standard deviation
sd_income <- sd(Chicago_data$income)

sd_income

# Display point estimates
mean_income
sd_income

#b.Construct a 95% confidence interval for μ, using R software:
  
# Construct a 95% confidence interval
confidence_interval <- t.test(Chicago_data$income, conf.level = 0.95)$conf.int

# Display the confidence interval
confidence_interval  

#2.a.Conduct a descriptive statistical analysis using graphs and numerical summaries. 
Anorexia_data=read.csv("C:/Users/benny/OneDrive/Desktop/R studio practice/Anorexia.dat.txt", sep="")

Anorexia_data

Anorexia_data_f <- subset(Anorexia_data, Anorexia_data$therapy == 'f')

Anorexia_data_f

#Descriptive Statistical Analysis:
#a. Graphical analysis:
# Assuming the variable for weight changes is called "weight_changes" and you have separate vectors for the family therapy and control groups
boxplot(Anorexia_data_f$after-Anorexia_data_f$before, 
        names = c("Family Therapy"),
        col = c("lightblue"),
        main = "Weight Changes",
        ylab = "Weight Changes")

#b. Numerical summaries:
# Assuming the weight changes for the family therapy group is stored in the vector "weight_changes_family"
summary(Anorexia_data_f$before)

Anorexia_data_fc <- subset(Anorexia_data, Anorexia_data$therapy != 'cb')

Anorexia_data_fc


#Confidence Interval:
# Assuming you have two separate vectors for weight changes: "weight_changes_family" and "weight_changes_control"
confidence_interval <- t.test(Anorexia_data_fc$before, Anorexia_data_fc$after, 
                              conf.level = 0.95, paired = FALSE)$conf.int

# Display the confidence interval
confidence_interval

