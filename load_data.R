# A common reusable code to load data

if (!require(data.table)) {
  install.packages('data.table')
}
require(data.table)

if (!require(lubridate)) {
  install.packages('lubridate')
}
require(lubridate)

data <- fread("household_power_consumption.txt", sep=";", header=TRUE, na.strings = "?")

# We only need two dates from this large dataset
req_data <- data[data$Date=="1/2/2007" | data$Date=="2/2/2007",]

# Remove data to save memory
rm(data)

# Adding new Date_Time column to table
req_data$Date_Time = dmy(req_data$Date) + hms(req_data$Time)

# Change Date in req_data to date class
req_data$Date = as.Date(req_data$Date, format="%d/%m/%Y")
