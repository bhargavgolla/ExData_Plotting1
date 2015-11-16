# Plot 2
# Load data
source('load_data.R')

plot(req_data$Date_Time, req_data$Global_active_power,
    type="l", ylab="Global Active Power (kilowatts)", xlab=""
)

dev.copy(png,'plot2.png',  width = 480, height = 480)
dev.off()
