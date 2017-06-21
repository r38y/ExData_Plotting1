source("./prep_data.R")

png("plot1.png", 480, 480)

hist(data$Global_active_power, 
     col = "red", 
     xlab = "Global Active Power (kilowatts)", 
     ylab = "Frequency", 
     main = "Global Active Power")

dev.off()