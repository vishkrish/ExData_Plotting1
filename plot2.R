powercons<-read.table("household_power_consumption.txt",sep=";",header=T)
powerFeb<-powercons[which(powercons$Date=='1/2/2007' | powercons$Date=='2/2/2007'), ]
png("plot2.png", width=480, height=480, units="px")
powerFeb$Global_active_power<-as.numeric(as.character(powerFeb$Global_active_power))
powerFeb<-transform(powerFeb, timestamp=as.POSIXct(strptime(paste(powerFeb$Date, powerFeb$Time),"%d/%m/%Y %H:%M:%S")))
plot(powerFeb$timestamp,powerFeb$Global_active_power,type="l",xlab="",ylab="Global Active Power (kilowatts)",col="black")
dev.off()