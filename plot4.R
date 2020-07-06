#read data from the dates 2007-02-01 and 2007-02-02
data<-read.csv("household_power_consumption.txt", stringsAsFactors=FALSE, sep=';')
data<-subset(data,Date %in% c("2/1/2007", "2/2/2007"))
head(data)

#construct the plot 4
data$Date<- strptime(paste(data$Date, data$Time, sep=" "), "%m/%d/%Y %H:%M:%S")
par(mfcol=c(2,2))
#plot top left
plot(data$Date, data$Global_active_power, type="l", xlab="", ylab="Global Active Power")
#plot bottom left
plot(data$Date, data$Sub_metering_1, type="l", xlab="", ylab="Energy sub metering", ylim=c(0,40))
lines(data$Date, data$Sub_metering_2, type="l", col="red")
lines(data$Date, data$Sub_metering_3, type="l", col="blue")
legend("topright",legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),lty=1,col=c("gray","red","blue"))
#plot top right
plot(data$Date, data$Voltage, type="l", xlab="datetime", ylab="Voltage")
#plot bottom right
plot(data$Date, data$Global_reactive_power, type="l", xlab="datetime", ylab="Global_reactive_power")

#save plot in workspace 
dev.copy(png, file="plot4.png", width=480, height=480)
dev.off()