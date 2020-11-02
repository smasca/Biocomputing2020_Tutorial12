# Samantha Masca
# BIOS 30318
# Exercise 10
# TA: Elizabeth Brooks    

# Task 1: Enter those data into a text file or Excel and then
# save a text file, and write a script that loads this text file 
# and produces a scatter plot of those two variables that includes a trend line.

setwd("/Users/samanthamasca/Biocomputing2020_Tutorial12/")
covid <- read.table(file = "COVID19_Honolulu.txt", header = TRUE, sep = ",", stringsAsFactors = FALSE)

ggplot(data = covid, aes(x = days, y = cases)) +
        geom_point() +
         xlab("Time (days)") +
         ylab("Cases")
       