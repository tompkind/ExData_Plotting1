setwd("C:/Users/TompkinsD/Documents/coursera2019/r4")

power <- read.csv("C:/Users/TompkinsD/Documents/coursera2019/r4/household_power_consumption.txt", sep=";", na.strings=c("?"))
power$DateTime <- paste(power$Date,power$Time)
power$DateTime <- strptime(power$DateTime, "%d/%m/%Y %H:%M:%S")
power$Date <- as.Date(power$Date, "%d/%m/%Y")
power <- subset(power, "2007-02-01" <= Date & "2007-02-02" >= Date)

png(file="plot2.png")
with(power, plot(DateTime, Global_active_power, pch=NA,xlab=" ",ylab="Global Active Power (Killowats)"))
lines(power$DateTime, power$Global_active_power)
dev.off()