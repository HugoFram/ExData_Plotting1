# Download, read and filter data for the assignment
source("readData.R")

# Set local time to english so that dates are printed in english
Sys.setlocale("LC_TIME", "English")

# Plot Global Active Power over time
with(householdPowerConsumption, plot(DateAndTime, Global_active_power,
                                     type = "l",
                                     xlab = "",
                                     ylab = "Global Active Power (kilowatts)"))