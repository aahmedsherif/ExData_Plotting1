#read the data 
# the file contains only the data from the dates 2007-02-01 and 2007-02-02
data <- read.csv("../exdata%2Fdata%2Fhousehold_power_consumption/household_power_consumption.txt", header=TRUE, sep = ";")
head(data)
 
# Convert the type of the time column to Time type 
data$Time <- strptime(paste(data$Date, data$Time, sep=" "), format="%d/%m/%Y %H:%M:%S")

# draw the plot
plot(y=data$Global_active_power, x=data$Time ,  type="l", xlab="", ylab="Global Active Power (kilowatts)")

# copy the drawing to png file
dev.copy(png, file = "plot2.png")
dev.off()
