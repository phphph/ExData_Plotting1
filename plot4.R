
data<- read.csv2("household_power_consumption.txt",dec=".", na.strings="?")
data2<- data[data$Date %in% c("1/2/2007","2/2/2007") ,]

datetime <- strptime(paste(data2$Date, data2$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 


with (data2, {
png(filename = "plot4.png", 
    width = 480, height = 480)

par(mfrow = c(2, 2))


##graph 1
plot(datetime, Global_active_power, type="l", xlab="", ylab="Global Active Power")

##graph 2
plot(datetime, Voltage, type = "l",xlab="datetime", ylab="Voltage")

##graph 3
plot(datetime, Sub_metering_1, type="l", xlab="",  ylab="Energy Sub metering")
lines(datetime, Sub_metering_2, type="l", col="red")
lines(datetime, Sub_metering_3, type="l", col="blue")
legend("topright", bty="n", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lwd=1, col=c("black", "red", "blue"))

##graph 4
plot(datetime, Global_reactive_power, type = "l",xlab = "datetime", ylab = "Global_reactive_power")

dev.off()

})