# Download, read and filter data for the assignment
source("readData.R")

# Plot the distribution of global active power
hist(householdPowerConsumption$Global_active_power, 
     xlab = "Global Active Power (kilowatts)", 
     col = "red", 
     main = "Global Active Power")