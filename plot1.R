if (!"load_data.R" %in% list.files()) {
  setwd("C:/Users/Alfy/Desktop/Coursera/Exploratory Data Analysis/")
} 
source("load_data.R")

png(filename="plot1.png")

hist(data$Global_active_power,
     col="red",
     xlab="Global Active Power (kilowatts)",
     main="Global Active Power",
     ylim=c(0,1200))

dev.off()
