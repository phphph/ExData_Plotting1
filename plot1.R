
data<- read.csv2("household_power_consumption.txt",dec=".", na.strings="?")
data2<- data[data$Date %in% c("1/2/2007","2/2/2007") ,]

with (data2, {
png(filename = "plot1.png", 
    width = 480, height = 480, 
    units = "px", bg = "transparent")
hist(Global_active_power, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.off()
})