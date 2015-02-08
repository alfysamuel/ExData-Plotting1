if (!"load_data.R" %in% list.files()) {
  setwd("C:/Users/Alfy/Desktop/Coursera/Exploratory Data Analysis/")
} 
source("load_data.R")

png(filename="plot2.png")

plot(x=data$DateTime, 
     y=data$Global_active_power, 
     type="l",
     xlab="",
     ylab="Global Active Power (kilowatts)", 
     main="")

dev.off()