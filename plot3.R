# Download, read and filter data for the assignment
source("readData.R")

# Set local time to english so that dates are printed in english
Sys.setlocale("LC_TIME", "English")

# Plot sub metering over time
with(householdPowerConsumption, plot(DateAndTime, Sub_metering_1, col = "black", type = "l", xlab = "", ylab = "Energy sub metering")) 
with(householdPowerConsumption, lines(DateAndTime, Sub_metering_2, col = "red"))
with(householdPowerConsumption, lines(DateAndTime, Sub_metering_3, col = "blue"))
legend("topright", col = c("black", "blue", "red"), legend = c("sub_metering_1", "sub_metering_2", "sub_metering_3"), lwd = 1)