m0 <- lm(Life_expect~1 ,data = train)
m1 <- lm(Life_expect~Alcohol+HepatitisB+Measles+BMI+Polio+Diphtheria,data = train)
paste("Training Model1 : ",round(mean(m1$residuals^2),2))
m2 <- lm(Life_expect ~ infant_deaths+percentage_expenditure+under_five_deaths+Total_expenditure+GDP+Population+Income_composition_of_resources
          ,data = train)
paste("Training Model2 : ",round(mean(m2$residuals^2),2))
#Validation Dataset
m0 <- lm(Life_expect~1 ,data = val)
m1 <- lm(Life_expect~Alcohol+HepatitisB+Measles+BMI+Polio+Diphtheria,data = val)
paste("Validation Model1 : ",round(mean(m1$residuals^2),2))
m2 <- lm(Life_expect~infant_deaths+percentage_expenditure+under_five_deaths+Total_expenditure+GDP+Population,data = val)
paste("Validation Model2 : ",round(mean(m2$residuals^2),2))
#test Dataset
m0 <- lm(Life_expect~1 ,data = test)
m1 <- lm(Life_expect~Alcohol+HepatitisB+Measles+BMI+Polio+Diphtheria+Schooling,data = test)
summary(m1)
paste("Testing Model1 : ",round(mean(m1$residuals^2),2))
m2 <- lm(Life_expect~infant_deaths+percentage_expenditure+under_five_deaths+Total_expenditure+GDP+Population+Income_composition_of_resources
         ,data = test)
paste("Testing Model2 : ",round(mean(m2$residuals^2),2))
