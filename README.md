# geo411-precipitation
Geography 411 – Homework 1

Overview:
In this project, I analyzed annual precipitation data for Buffalo and San Diego from 1940 to 2025. The goal was to explore the patterns in precipitation, perform basic statistical analysis, and calculate probabilities related to future precipitation events. The assignment also included testing whether the assumption of normality in the data was valid and using this assumption for various probability calculations.

Methods:
  Data Import: I started by loading the precipitation data for both Buffalo and San Diego into R. The dataset includes yearly precipitation totals for each city from 1940 to 2025.
  
  Descriptive Analysis: I used basic statistical functions like mean(), sd(), and summary() to calculate the mean, standard deviation, and other summary statistics for the precipitation data in both cities.
 
  Visualizing the Data: I created histograms to visualize the distribution of precipitation values for both cities. I also overlaid normal distribution curves on the histograms to compare how closely the data followed a normal   distribution.
  
  Probability Calculations:
      I calculated the probability that annual precipitation in 2025 would exceed 42 inches for Buffalo, assuming normal distribution. I also calculated the probability of precipitation falling below or within specific ranges        for both cities, both assuming normality and using actual data.
  Hypothesis Testing:
    I performed two-sample t-tests to check if there were significant differences in precipitation between the periods 1940–1982 and 1983–2025 for both Buffalo and San Diego.
  Binomial Model:
    I calculated the probability of Buffalo having at least two years with precipitation exceeding 42 inches over the next four years. This was done using a complementary probability approach.

Key Findings:
  Buffalo: The analysis showed that assuming normality didn’t align well with the data. The probability of exceeding 42 inches of precipitation in 2025 based on the normal distribution was much higher than what was observed in   the actual data.
  San Diego: The normal distribution assumption worked reasonably well here, although there were some discrepancies when comparing the normal and actual probabilities.
  The t-tests: Confirmed that there has been a noticeable shift in precipitation patterns for both cities after 1982.

Tools:
  RStudio: Used for data analysis, statistical testing, and visualizations.
  GitHub: Used to store and manage the project files, ensuring version control throughout the project.

Reflection:
  This project provided a great opportunity to explore precipitation patterns in two very different climates. It was interesting to see how the assumption of normal distribution played out, especially for Buffalo where it        didn’t seem to hold. In the future, I’d like to explore more advanced statistical models to better capture these patterns and their potential implications for urban planning and risk management.
