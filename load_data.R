setwd("C:/Users/Alfy/Desktop/Coursera/Exploratory Data Analysis")
filename <- "household_power_consumption.txt"
rawdata <- read.table(filename, header=TRUE,
                   sep = ";", colClasses = c("character", "character", rep("numeric",7)),
                   na = "?")
dim(rawdata)
data <- subset(rawdata, Date == "1/2/2007" | Date == "2/2/2007")
data$DateTime <- strptime(paste(data$Date, data$Time), "%d/%m/%Y %H:%M:%S")
dim(data)

