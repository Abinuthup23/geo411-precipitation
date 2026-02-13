# Geography 411 – Homework 1
# Name: Abin Uthup
# Description: Analysis of annual precipitation data for Buffalo and San Diego
#Script file for Exercise #1 - Geography 411
#Faithwin

#<2> The first step is to set the working directory.  
# Use the Set Working Directory > Choose Directory option 
# in the Session menu to set your working directory

#You could also do this with a command 
#Example
#setwd("U:/Geo411/Exercise1")

#Use getwd() to see the current working directory
getwd()
#Use help to find out what the getwd() command can do.
help(getwd) 


#Use dir() to see the contents of the working directory.
#If you can see the data file, "precip.csv", in the listing
#then you are ready to continue.  Otherwise, be sure that you
#have properly set the working directory and that your data 
#file is saved there. 
dir()





#<4> Load the precipitation data file into R.
precip <- read.csv("precip.csv")
precip





#<5> Get some descriptive measures of the precip data 
dim(precip)
length(precip$Buffalo)
summary(precip)
mean(precip$Buffalo)
mean(precip$SanDiego)
sd(precip$Buffalo)
sd(precip$SanDiego)





#<6> Plotting histograms and relative histograms for the precipitation
#datasets.
hist(precip$Buffalo)

hist(precip$Buffalo, freq = FALSE)
curve(dnorm(x, mean=mean(precip$Buffalo), sd=sd(precip$Buffalo)), add=TRUE)

hist(precip$SanDiego, freq = FALSE)
curve(dnorm(x, mean=mean(precip$SanDiego), sd=sd(precip$SanDiego)), add=TRUE)






#<7> Creating a binary (0,1) variable and using it to select a subset of
#the data.
precip$late <- ifelse(precip$Year >= 1983, 1, 0)
precip
precip$late == 1
precip$Year[precip$late == 1]

#Creating Buffalo subsets
bfloLate <- precip$Buffalo[precip$late == 1]
bfloEarly <- precip$Buffalo[precip$late == 0]

#Creating San Diego subsets
SDLate <- precip$SanDiego[precip$late == 1]
SDEarly <- precip$SanDiego[precip$late == 0]






#<8> Create separate vectors of values for the early and late periods and
#perform two-sample t-tests for each city.

#Unequal Variance Assumed, two-sided test
t.test(bfloLate, bfloEarly)

#Unequal Variance Assumed, one-sided test
t.test(bfloLate, bfloEarly, alternative = "greater")

#Equal Variance Assumed, two-sided test 
t.test(bfloLate, bfloEarly, var.equal = TRUE)

#Unequal Variance Assumed, two-sided test
t.test(SDLate, SDEarly)

#9b
data_1940_2025 <- precip[precip$Year >= 1940 & precip$Year <= 2025,]
above_42 <- sum(data_1940_2025$Buffalo > 42)
total_years <- nrow(data_1940_2025)
prob_above_42 <- above_42/total_years
prob_above_42

#9C
prob_less_4 <- pnorm(4, 9.908605, 4.224307)
prob_less_4
prob_4_to_10 <- pnorm(10, 9.908605, 4.224307) - prob_less_4
prob_4_to_10

#9D
below_4 <- sum(data_1940_2025$SanDiego < 4)
between_4_10 <- sum(data_1940_2025$SanDiego >= 4 & data_1940_2025$SanDiego <= 10)
prob_less_4_sand <- below_4/total_years
prob_4_10_sand <- between_4_10/total_years
prob_less_4_sand
prob_4_10_sand

#10
prob_2 <- 1-sum(dbinom(0:1,4,prob_above_42))
prob_2



#Remember to upload your r.script to GitHub. Steps in the word document. 
