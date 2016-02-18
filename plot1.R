powerConsumption <- read.csv("household_power_consumption.txt", sep = ";")

png(filename = "plot1.png", width = 480, height = 480)

hist(round(as.numeric(powerConsumption$Global_active_power)), xlab = "Global Active Powers (kilowatts)", col="red", main="Global Active Power")

dev.off()
