# Samantha Masca
# BIOS 30318
# Exercise 10
# TA: Elizabeth Brooks    

# Task 1: enter those data into a text file or Excel and then
# save a text file, and write a script that loads this text file 
# and produces a scatter plot of those two variables that includes a trend line

# Number of total COVID-19 cases in county of Honolulu

setwd("/Users/samanthamasca/Biocomputing2020_Tutorial12/")
covid <- read.table(file = "COVID19_Honolulu.txt", header = TRUE, sep = "\t", stringsAsFactors = FALSE)

ggplot(data = covid, aes(x = days, y = cases)) +
        geom_point(size = 0.05) +
        xlab("Time (days)") +
        ylab("Cases") +
        ggtitle("Number of Total COVID-19 Cases in County of Honolulu") +
        geom_smooth(method = "loess")
        
# Task 2: Given the data in “data.txt”. Write a script that generates two figures that sumamrize the data. 
# First, show a barplot of the means of the four populations. 
# Second, show a scatter plot of all of the observations. You may want to “jitter” the points (geom_jitter()) 
# to make it easier to see all of the observations within a population
# in your scatter plot. 
# Alternatively, you could also try setting the alpha argument in geom_scatterplot() to 0.1. 
# Do the bar and scatter plots tell you different stories? Why?


       