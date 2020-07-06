#read data from the dates 2007-02-01 and 2007-02-02
data<-read.csv("household_power_consumption.txt",stringsAsFactors=FALSE, sep=';')
data<-subset(data,Date %in% c("2/1/2007", "2/2/2007"))
head(data)

#construct the plot 2
data$Date<- strptime(paste(data$Date, data$Time, sep=" "), "%m/%d/%Y %H:%M:%S")
plot(data$Date, data$Global_active_power, type="l", xlab="", ylab="Global Active Power (kilowatts)")

#save plot in workspace 
dev.copy(png, file="plot2.png", width=480, height=480)
dev.off()