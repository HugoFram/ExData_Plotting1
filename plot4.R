# Download, read and filter data for the assignment
source("readData.R")

# Set the plots layout
par(mfcol = c(2,2), mar = c(4,4,2,2))

# Plot Global Active Power over time
with(householdPowerConsumption, plot(DateAndTime, Global_active_power,
                                     type = "l",
                                     xlab = "",
                                     ylab = "Global Active Power"))

# Plot sub metering over time
with(householdPowerConsumption, plot(DateAndTime, Sub_metering_1, col = "black", type = "l", xlab = "", ylab = "Energy sub metering")) 
with(householdPowerConsumption, lines(DateAndTime, Sub_metering_2, col = "red"))
with(householdPowerConsumption, lines(DateAndTime, Sub_metering_3, col = "blue"))
legend("topright", col = c("black", "blue", "red"), legend = c("sub_metering_1", "sub_metering_2", "sub_metering_3"), lwd = 1)

# Plot Voltage over time
with(householdPowerConsumption, plot(DateAndTime, Voltage,
                                     type = "l",
                                     xlab = "datetime",
                                     ylab = "Voltage"))

# Plot Voltage over time
with(householdPowerConsumption, plot(DateAndTime, Global_reactive_power,
                                     type = "l",
                                     xlab = "datetime",
                                     ylab = "Global_reactive_power"))