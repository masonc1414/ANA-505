#load and install caTools

install.packages('caTools')
library(caTools)

#insert dataset 

trainingset <- data.frame(Years_Exp=c(1.1,1.3,1.5,2.0,2.2,2.9,3.0,3.2,3.2,3.7),
                 Salary=c(39343.00,46205.00,37731.00,43525.00,39891.00,56642.00,60150.00,54445.00,
                          64445.00,57189.00))

#view dataset

show(df)

#make sure that the relationship between years experienced and salary is roughly linear

scatter.smooth(years_experienced,salary, main='years experienced vs salary')

# create a boxplot to visualize the distribution of salary and check for outliers

boxplot(salary)

#Fitting Simple Linear Regression to the Training set

lm.r <- lm(formula = Salary ~ Years_Exp,data = trainingset)

#summary of the linear model

summary(lm.r)

#fitted regression equation -> Salary = 28217+9021Years_Exp




