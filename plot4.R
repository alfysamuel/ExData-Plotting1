if (!"load_data.R" %in% list.files()) {
  setwd("C:/Users/Alfy/Desktop/Coursera/Exploratory Data Analysis/")
} 
source("load_data.R")

png(filename="plot4.png")

par(mfrow = c(2, 2))

# Plot 1 - global active power: upper left

plot(x=data$DateTime, 
     y=data$Global_active_power, 
     type="l",
     xlab="",
     ylab="Global Active Power", 
     main="")

# Plot 2 - voltage: upper right

plot(x=data$DateTime, 
     y=data$Voltage, 
     type="l",
     xlab="datetime",
     ylab="Votlage", 
     main="")

# Plot 3 - sub metering: lower left

plot(x=data$DateTime, 
     y=data$Sub_metering_1, 
     type="l", 
     xlab="", 
     ylab="Energy sub metering")
lines(data$DateTime, data$Sub_metering_2, type="l", col="red")
lines(data$DateTime, data$Sub_metering_3, type="l", col="blue")
legend("topright", lty=1, lwd=1, col=c("black","blue","red"), legend=legendcols, bty="n")

# Plot 4 - global reactive power: lower right

plot(x=data$DateTime, 
     y=data$Global_reactive_power, 
     type="l",
     xlab="datetime",
     ylab="Global_reactive_power", 
     main="")

dev.off()