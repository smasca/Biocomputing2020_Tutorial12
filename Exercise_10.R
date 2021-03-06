# Samantha Masca
# BIOS 30318
# Exercise 10
# TA: Elizabeth Brooks    

# Task 1: enter those data into a text file or Excel and then
# save a text file, and write a script that loads this text file 
# and produces a scatter plot of those two variables that includes a trend line

# Number of COVID-19 cases per day in the City and County of Honolulu
# Data taken from https://health.hawaii.gov/

setwd("/Users/samanthamasca/Biocomputing2020_Tutorial12/")
covid <- read.table(file = "COVID19_Honolulu.txt", header = TRUE, sep = "\t", stringsAsFactors = FALSE)

ggplot(data = covid, aes(x = days, y = cases)) +
        geom_point(size = 0.5) +
        xlab("Time (days)") +
        ylab("# of Cases") +
        ggtitle("Number of COVID-19 Cases per Day in County of Honolulu") +
        geom_smooth(method = "lm") 
        
# Task 2: Given the data in “data.txt”. Write a script that generates two figures that summarize the data. 
# First, show a barplot of the means of the four populations. 
# Second, show a scatter plot of all of the observations. You may want to “jitter” the points (geom_jitter()) 
# to make it easier to see all of the observations within a population
# in your scatter plot. 
# Alternatively, you could also try setting the alpha argument in geom_scatterplot() to 0.1. 

setwd("/Users/samanthamasca/Biocomputing2020_Tutorial12/")
pop <- read.table(file = "data.txt", header = TRUE, sep = ",", stringsAsFactors = FALSE)

# finding avg observations in each region, then making a dataframe with all the averages 
northData = pop[pop$region=="north",]
northAvg <- mean(northData$observations)
  
southData = pop[pop$region=="south",]
southAvg <- mean(southData$observations) 
  
eastData = pop[pop$region=="east",]
eastAvg <- mean(eastData$observations)
  
westData = pop[pop$region=="west",]
westAvg <- mean(westData$observations)

df<-data.frame(region=c("north","south","east","west"), average=c(northAvg,southAvg,eastAvg,westAvg))

# barplot of the means of the four populations 
ggplot(data = df, aes(x = region, y = average, color = region, fill = region)) +
  geom_bar(stat="identity") +
  xlab("Region") +
  ylab("Average Observations") +
  ggtitle("Average Observations in Each Region")

# scatterplot of the of the four populations 
ggplot(data = pop, aes(x = region, y = observations, color = region)) +
  geom_point(size = 0.01) +
  xlab("Region") +
  ylab("Average Observations") +
  ggtitle("Average Observations in Each Region") +
  geom_jitter()

# Do the bar and scatter plots tell you different stories? Why?
# The barplot tells us the average number of observations in each region, while the scatterplot
# displays a dot for each (and every) observation for a region.  If one wanted to see 
# all the different observations in one group, use a scatterplot.  If one wanted to 
# see the average observations between the different regions and compare, use a 
# barplot.
       