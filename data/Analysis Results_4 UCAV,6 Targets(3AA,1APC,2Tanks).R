library(readxl)
library(car)

Data = read_excel("C:/Users/Ugur/OneDrive/Studium UCF/19 Spring - IDS6145/Final Project/Experimentation Results_4 UCAV,6 Targets(3AA,1APC,2Tanks).xlsx", 
                                                          sheet = "T.Test Data")


# 1. Comparing Amount of destroyed targets: (No significant difference)
Sample1 = Data$`Amount of destroyed targets - A`
Sample2 = Data$`Amount of destroyed targets - B`

# Mean Values
mean(Sample1)
mean(Sample2)

#Levene's Test: Comparing the variances of Amount of destroyed targets of experiments A and B.
# p-value greater than 0.05, indicating that there is no significant difference in variances between the groups
y1 <- c(Sample1, Sample2)
group1 <- as.factor(c(rep(1, length(Sample1)), rep(2, length(Sample2))))
leveneTest(y1, group1, center = mean) #p-value 0.03004 --> var.equal = FALSE

# t.test (if p> 0.05 we conclude that there is not enough evidence of a difference between the (true) averages of the two samples at a=0.95)
t.test(Sample1, Sample2, var.equal = FALSE) # p-value = 0.1482 (No significant difference)
#############


# 2 Comparing Amount of autonomous Systems at the end of the mission:(No significant difference)

Sample3 = Data$`Amount of UCAV at the end of the mission - A`
Sample4 = Data$`Amount of UCAV at the end of the mission - B`

# Mean Values
mean(Sample3)
mean(Sample4)

#Levene's Test:
# p-value greater than 0.05, indicating that there is no significant difference in variances between the groups
y2 <- c(Sample3, Sample4)
group2 <- as.factor(c(rep(1, length(Sample3)), rep(2, length(Sample4))))
leveneTest(y2, group2, center = mean) # p-value 0.01496 --> var.equal = FALSE

# t.test (if p> 0.05 we conclude that there is not enough evidence of a difference between the (true) averages of the two samples at a=0.95)
t.test(Sample3, Sample4, var.equal = FALSE) # p-value = 1.340213672 (No significant difference)
#############


# 3. Comparing elapsed Time since command received: (significant difference)

Sample5 = Data$`Elapsed Time (sec) since command received - A`
Sample6 = Data$`Elapsed Time (sec) since command received - B`

# Mean Values
mean(Sample5)
mean(Sample6)

#Levene's Test:
# p-value greater than 0.05, indicating that there is no significant difference in variances between the groups
y3 <- c(Sample5, Sample6)
group3 <- as.factor(c(rep(1, length(Sample5)), rep(2, length(Sample6))))
leveneTest(y3, group3, center = mean) #p-value 0.355 --> var.equal = TRUE

# t.test (if p> 0.05 we conclude that there is not enough evidence of a difference between the (true) averages of the two samples at a=0.95)
t.test(Sample5, Sample6, var.equal = TRUE) # p-value = 6.198e-09 (significant difference)


#############


# 4. Comparing Amount of Used Ammunition: (significant difference)

Sample7 = Data$`Amount of Used Ammunition - A`
Sample8 = Data$`Amount of Used Ammunition - B`

# Mean Values
mean(Sample7)
mean(Sample8)

#Levene's Test:
# p-value greater than 0.05, indicating that there is no significant difference in variances between the groups
y4 <- c(Sample7, Sample8)
group4 <- as.factor(c(rep(1, length(Sample7)), rep(2, length(Sample8))))
leveneTest(y4, group4, center = mean) #p-value 0.2435 --> var.equal = TRUE

# t.test (if p> 0.05 we conclude that there is not enough evidence of a difference between the (true) averages of the two samples at a=0.95)
t.test(Sample7, Sample8, var.equal = TRUE) # p-value = 0.004834 (significant difference)

#############


# 5. Comparing Only hostile targets engaged: (No significant difference)
# Obviosly no significant difference, since Data is same

#############


# 6. Comparing Operator was able to supervise all used autonomous systems {True = 1, False = 0}: (No significant difference)
# Obviosly no significant difference, since Data is same

#############


# 7. Comparing Operator perception of cognitive workload: (significant difference)

Sample13 = Data$`Operator perception of  cognitive workload {1..10} - A`
Sample14 = Data$`Operator perception of  cognitive workload {1..10} - B`

# Mean Values
mean(Sample13)
mean(Sample14)

#Levene's Test: 
# p-value greater than 0.05, indicating that there is no significant difference in variances between the groups
y7 <- c(Sample13, Sample14)
group7 <- as.factor(c(rep(1, length(Sample13)), rep(2, length(Sample14))))
leveneTest(y7, group7, center = mean) # p-value 2.2e-16 --> var.equal = FALSE

# t.test (if p> 0.05 we conclude that there is not enough evidence of a difference between the (true) averages of the two samples at a=0.95)
t.test(Sample13, Sample14, var.equal = FALSE) # p-value = 2.2e-16 (significant difference)
#############

