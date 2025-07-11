#INTRODUCTION

#This project is the Week 1 Assignment regarding R programming of my Data Science Intership 
#journey @NeoZeno Talent <https://www.linkedin.com/company/neozenotalent> with my mentor 
#Aishwarya <https://www.linkedin.com/in/aishwarya-s-b48038223/> where I explored basics of R
#programming-data types, vectors, variables, and operators to analyze temperature trends
#in my home city. Using AccuWeather <https://www.accuweather.com> I created a CSV dataset
#of weekly average temperatures over 10 weeks in Lucknow, simulated a heatwave by increasing
#each temperature by 2 degrees Celsius, and visualized the trends via scatter-line plots.
#Later I compared it with temperature conditions in Noida during the same period by preparing
#a CSV dataset of weekly average temperatures over 10 weeks.

"City Temperature Trends: Analyzing Weekly Climate Patterns Using R"

#LUCKNOW

#Creating a Vector for Average Weekly Temperatures (in degrees Celsius) in Lucknow, U.P., India for 10 weeks
temp_luck<-c(30.9,31.0,33.8,32.0,29.0,32.0,36.0,32.0,32.8,30.7)

#Assigning weeks using the names() function
names(temp_luck)<-c("Week1","Week2","Week3","Week4","Week5","Week6","Week7","Week8","Week9","Week10")

#Printing the names() vector
names(temp_luck)

#Printing the entire updated vector
print(temp_luck)

#Minimum temperature in the last 10 weeks
min(temp_luck, na.rm=FALSE)

#Maximum temperature in the last 10 weeks
max(temp_luck, na.rm=FALSE)

#Average temperature of the last 10 weeks
mean(temp_luck)

#Number of weeks where the temperature was above 30 degrees
temp_check_luck<-sum(temp_luck>30) #sum the number of times the temperature > 30
print(temp_check_luck)

#Weeks between 25 and 35 degrees Celsius
condition_luck<-temp_luck>25 & temp_luck<35 #temperatures falling between 25 and 35 degrees Celsius
subset_vector_luck<-temp_luck[condition_luck] #subset the vector
print(subset_vector_luck) #print the subset vector

#Add 2 degrees Celsius to each temperature and update a new vector
temp_num_luck<-2
heatwave_temp_luck<-temp_luck+temp_num_luck #add 2 degrees to each temp_luck value
print(heatwave_temp_luck)

#Heatwave simulation for Lucknow
#plot(heatwave_temp_luck,type="o",col="black",xlab= "Week",ylab="Temperature in degrees Celsius",main="Lucknow Average Weekly Temperatures during Heatwave")

#NOIDA

#Creating a Vector for Average Weekly Temperatures (in degrees Celsius) in Noida, U.P., India for 10 weeks
temp_noi<-c(30.6,30.1,32.7,32.7,31.3,30.7,36.0,31.2,32.6,31.0)

#Assigning weeks using the names() function
names(temp_noi)<-c("Week1","Week2","Week3","Week4","Week5","Week6","Week7","Week8","Week9","Week10")

#Printing the names() vector
names(temp_noi)

#Printing the entire updated vector
print(temp_noi)

#Minimum temperature in the last 10 weeks
min(temp_noi, na.rm=FALSE)

#Maximum temperature in the last 10 weeks
max(temp_noi, na.rm=FALSE)

#Average temperature of the last 10 weeks
mean(temp_noi)

#Number of weeks where the temperature was above 30 degrees
temp_check_noi<-sum(temp_noi>30) #sum the number of times the temperature > 30
print(temp_check_noi)

#Weeks between 25 and 35 degrees Celsius
condition_noi<-temp_noi>25 & temp_noi<35 #temperatures falling between 25 and 35 degrees Celsius
subset_vector_noi<-temp_noi[condition_noi] #subset the vector
print(subset_vector_noi) #print the subset vector

#Add 2 degrees Celsius to each temperature and update a new vector
temp_num_noi<-2
heatwave_temp_noi<-temp_noi+temp_num_noi #add 2 degrees to each temp_noi value
print(heatwave_temp_noi)

#Heatwave simulation for Noida
#plot(heatwave_temp_noi,type="o",col="blue",xlab= "Week",ylab="Temperature in degrees Celsius",main="Noida Average Weekly Temperatures during Heatwave")

#Comparing Lucknow and Noida heatwave conditions
plot(heatwave_temp_luck,type="o",col="black",xlab= "Week",ylab="Temperature in degrees Celsius",main="Comparison of Lucknow & Noida Average Weekly Temperatures during Heatwave")
points(heatwave_temp_noi,type="o",col="blue")

#CONCLUSION
#In the assignment I have used vectors, decision-making conditions, vector subsetting, and
#visualization functions, which are the initial steps for an aspiring data scientist. I
#enjoyed working with a real-world problem making the exercise even more impactful. 

#Insights:
#Greater variations or fluctuations in temperatures in Lucknow are recorded whereas
#in comparison, Noida experiences a more stable temperature range. Though, the maximum
#temperature recorded in both cities is 38 degrees Celsius during the simulated heatwave.