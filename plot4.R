# Plot 4
# Load data
source('load_data.R')

# Generate 4 quardrant figure
par(mfrow=c(2,2))

# Top left plot or Plot 2
plot(req_data$Date_Time, req_data$Global_active_power,
    type="l", ylab="Global Active Power (kilowatts)", xlab=""
)

# Top right plot
plot(req_data$Date_Time, req_data$Voltage,
    type="l", ylab="Voltage", xlab="datetime"
)

# Bottom left plot or plot 3
# Plot Submeter 1
plot(req_data$Date_Time, req_data$Sub_metering_1,
    type="l", ylab="Energy sub metering", xlab=""
)
# Plot Submeter 2
lines(req_data$Date_Time, req_data$Sub_metering_2, col='red')
# Plot Submeter 3
lines(req_data$Date_Time, req_data$Sub_metering_3, col='blue')

# Legend. Placing it on top because, topright is leading to legend
# going off screen in png
legend("top",
    legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
    lty=c(1,1,1), col=c("black","red", "blue"), cex=0.7, bty="n")

# Top bottom Plot
plot(req_data$Date_Time, req_data$Global_reactive_power,
    type="l", ylab="Global Reactive Power (kilowatts)", xlab="datetime"
)

dev.copy(png,'plot4.png',  width = 480, height = 480)
dev.off()

par(mfrow=c(1,1))
