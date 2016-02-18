powerConsumption <- read.csv("household_power_consumption.txt", sep = ";", stringsAsFactors = FALSE)
png(filename = "plot2.png", width = 480, height = 480)

t <- strptime(paste(powerConsumption$Date, powerConsumption$Time), "%d/%m/%Y %H:%M:%S")

plot(t, powerConsumption$Global_active_power, xlab="", ylab = "Global Active Power(kilowatts)", pch=".", type="l")

dev.off()
