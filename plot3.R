# Plot 3
# Load data
source('load_data.R')

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

dev.copy(png,'plot3.png',  width = 480, height = 480)
dev.off()
