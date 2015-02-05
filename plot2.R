
data<- read.csv2("household_power_consumption.txt",dec=".", na.strings="?")
data2<- data[data$Date %in% c("1/2/2007","2/2/2007") ,]

datetime <- strptime(paste(data2$Date, data2$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 


with (data2, {
png(filename = "plot2.png", 
    width = 480, height = 480)
plot(datetime, Global_active_power, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()


})