#read the data 
# the file contains only the data from the dates 2007-02-01 and 2007-02-02
data <- read.csv("../exdata%2Fdata%2Fhousehold_power_consumption/household_power_consumption.txt", header=TRUE, sep = ";")
head(data)
 
# draw the histogram
hist(data$Global_active_power, freq = TRUE, col = "red", xlab = "Global Active Power (kilowatts)", ylab="Frequency" , main = "Global Active Power")

# copy the drawing to png file
dev.copy(png, file = "plot1.png")
dev.off()
