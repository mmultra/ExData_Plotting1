##Goal: to examine how household energy usage varies over a 2-day period in 
##February, 2007 and reconstruct the following plots below, all
##of which were constructed using the base plotting system.

url="https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
##data description: Measurements of electric power consumption in one household 
##with a one-minute sampling rate over a period of almost 4 years. 
##Different electrical quantities and some sub-metering values are available."

#read data from the dates 2007-02-01 and 2007-02-02
data<-read.csv("household_power_consumption.txt", sep=';')
data<-subset(data,Date %in% c("2/1/2007", "2/2/2007"))
head(data)
#construct the plot
hist(as.numeric(data$Global_active_power), col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")

#save plot in workspace 
dev.copy(png, file="plot1.png", width=480, height=480)
dev.off()