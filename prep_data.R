if(!file.exists("./data")) { dir.create("./data")}
localZipFile <- "./data/household_power_consumption.zip"
localFile <- "./data/household_power_consumption.txt"
if (!file.exists(localZipFile)) {
  fileURL <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
  download.file(fileURL, destfile = localZipFile, method = "curl")
}
if (!file.exists(localFile)) {
  unzip(localZipFile, junkpaths = TRUE, exdir = "./data") 
}

library(data.table)

data <- fread(localFile, sep = ";", na.strings = "?", header = TRUE)
data <- subset(data, Date == "1/2/2007" | Date == "2/2/2007")
data$DateTime <- as.POSIXct(paste(data$Date, data$Time), format="%d/%m/%Y %H:%M:%S")
data$Date <- as.Date(data$Date, format = "%d/%m/%Y")
data$Time <- lapply(data$Time, function(x) strptime(x, format = "%H:%M:%S"))