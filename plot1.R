powercons<-read.table("household_power_consumption.txt",sep=";",header=T)
powerFeb<-powercons[which(powercons$Date=='1/2/2007' | powercons$Date=='2/2/2007'), ]
h<-hist(c(powerFeb$Global_active_power),freq=T)
png("plot1.png", width=480, height=480, units="px")
plot(h,col="red",main="Global Active Power",xlab="Global Active Power (kilowatts)")
dev.off()