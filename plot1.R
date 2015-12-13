x<-read.table("household_power_consumption.txt",header=TRUE,sep = ";")
x$date2<-as.Date(x$Date,"%d/%m/%Y")
x$time2<-strptime(x$Time,"%H:%M:%S")

hist(x$Global_active_power,main = "Global Active Power", xlab = "Global Active Power (kilowatts)",col = "Red")
dev.copy(png, file="plot1.png")
dev.off()
