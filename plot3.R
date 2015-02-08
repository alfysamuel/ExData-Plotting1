if (!"load_data.R" %in% list.files()) {
  setwd("C:/Users/Alfy/Desktop/Coursera/Exploratory Data Analysis/")
} 
source("load_data.R")

png(filename="plot3.png")

legendcols = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3")

plot(x=data$DateTime, 
     y=data$Sub_metering_1, 
     type="l", 
     xlab="", 
     ylab="Energy sub metering")

lines(data$DateTime, data$Sub_metering_2, type="l", col="red")

lines(data$DateTime, data$Sub_metering_3, type="l", col="blue")

legend("topright", lty=1, lwd=1, col=c("black","blue","red"), legend=legendcols)

dev.off()