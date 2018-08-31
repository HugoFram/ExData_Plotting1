require(dplyr)

## Download and unzip the dataset if it does not already exist
if (!file.exists("household_power_consumption.txt")) {
    url = "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
    download.file(url, "electricityPowerConsumptionDataset.zip")
    unzip("electricityPowerConsumptionDataset.zip")
    rm(url) 
    unlink("electricityPowerConsumptionDataset.zip", recursive = TRUE)
}

# Load the dataset into R
householdPowerConsumption <- tbl_df(read.table("household_power_consumption.txt", header = TRUE, sep = ";", na.strings = "?"))

# Add a variable containing both Date and Time in POSIXct format
householdPowerConsumption <- mutate(householdPowerConsumption, DateAndTime = as.POSIXct(strptime(paste(Date, Time), "%d/%m/%Y %H:%M:%S")))

# Extract the data for only 2007-02-01 and 2007-02-02
householdPowerConsumption <- filter(householdPowerConsumption, 
                                    difftime(DateAndTime, as.POSIXct("2007-02-01")) > 0 &  difftime(DateAndTime, as.POSIXct("2007-02-02")) < 0)