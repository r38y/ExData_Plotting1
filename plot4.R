source("./prep_data.R")

png("plot4.png", 480, 480)

par(mfrow=c(2,2))

plot(data$DateTime, data$Global_active_power, xlab = "", ylab = "Global Active Power", type = "n")
lines(data$DateTime, data$Global_active_power)

plot(data$DateTime, data$Voltage, xlab = "datetime", ylab = "Voltage", type = "n")
lines(data$DateTime, data$Voltage)

plot(data$DateTime, data$Sub_metering_1, xlab = "", ylab = "Energy sub metering", type = "n")
lines(data$DateTime, data$Sub_metering_1, col = "grey")
lines(data$DateTime, data$Sub_metering_2, col = "red")
lines(data$DateTime, data$Sub_metering_3, col = "blue")
legend("topright", legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lwd = 1, col = c("grey", "red", "blue"))

plot(data$DateTime, data$Global_reactive_power, xlab = "datetime", ylab = "Global_reactive_power", type = "n")
lines(data$DateTime, data$Global_reactive_power)

dev.off()