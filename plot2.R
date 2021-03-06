x<-read.table("household_power_consumption.txt",header=TRUE,sep = ";")
x$date2<-as.Date(x$Date,"%d/%m/%Y")
x$time2<-strptime(x$Time,"%H:%M:%S")
x$weekday<-weekdays(x$date2,abbreviate=TRUE)
full <- paste(as.Date(x$Date,"%d/%m/%Y"), x$Time)
x$datetime <- as.POSIXct(full)

plot(x$Global_active_power~x$datetime, type="l",ylab="Global Active Power (kilowatts)", xlab="")
dev.copy(png, file="plot2.png")
dev.off()
