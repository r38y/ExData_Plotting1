source("./prep_data.R")

png("plot2.png", 480, 480)

plot(data$DateTime, data$Global_active_power, xlab = "", ylab = "Global Active Power (kilowatts)", type = "n")
lines(data$DateTime, data$Global_active_power)

dev.off()