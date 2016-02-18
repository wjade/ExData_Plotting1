powerConsumption <- read.csv("household_power_consumption.txt", sep = ";", stringsAsFactors = FALSE)
png(filename = "plot3.png", width = 480, height = 480)

t <- strptime(paste(powerConsumption$Date, powerConsumption$Time), "%d/%m/%Y %H:%M:%S")

plot(t, powerConsumption$Sub_metering_1, xlab="", ylab = "Energy sub metering", pch=".", type="l")
lines(t, powerConsumption$Sub_metering_2, col="red")
lines(t, powerConsumption$Sub_metering_3, col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), col=c("black", "red", "blue"), lwd=c(1,1,1))

dev.off()
