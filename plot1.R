# Download, read and filter data for the assignment
source("readData.R")

# Open png device
png("plot1.png", width = 480, height = 480)

# Plot the distribution of global active power
hist(householdPowerConsumption$Global_active_power, 
     xlab = "Global Active Power (kilowatts)", 
     col = "red", 
     main = "Global Active Power")

# Close graphing device
dev.off()