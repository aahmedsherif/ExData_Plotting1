#read the data 
# the file contains only the data from the dates 2007-02-01 and 2007-02-02
data <- read.csv("../exdata%2Fdata%2Fhousehold_power_consumption/household_power_consumption.txt", header=TRUE, sep = ";")
head(data)
 

# Convert the type of the time column to Time type 
data$Time <- strptime(paste(data$Date, data$Time, sep=" "), format="%d/%m/%Y %H:%M:%S")

# draw the histogram
with(data, plot(Time, Sub_metering_1, ylab = "Energy sub metering", xlab="", type="l"))
with(data, points(Time, Sub_metering_2, col = "red", type="l"))
with(data, points(Time, Sub_metering_3, col = "blue", type="l"))

# draw the legend
legend("topright", lwd = 1, col = c("black", "red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), y.intersp=1)

# copy the drawing to png file
dev.copy(png, file = "plot3.png")
dev.off()
