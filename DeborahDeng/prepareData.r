###################################################
# Log for EDA Course Project 1
# Date: 4/11/2015
###################################################

# -------------- Data Preparation -----------------
# import data from text (Note: set stringAsFactor FALSE)
household_power_consumption <- read.csv("E:/debbie/Documents/CourseraOrg/Data Science Spec/EDA/household_power_consumption.txt", sep=";", stringsAsFactors=FALSE)

# Extract 2007-02-01 and 2007-02-02 dates only
data <- subset(household_power_consumption, Date=="1/2/2007"| Date=="2/2/2007")

# Convert column data types
data$Global_active_power <- as.numeric(data$Global_active_power)
data$Global_reactive_power <- as.numeric(data$Global_reactive_power)
data$Sub_metering_1 <- as.numeric(data$Sub_metering_1)
data$Sub_metering_2 <- as.numeric(data$Sub_metering_2)
data$Sub_metering_3 <- as.numeric(data$Sub_metering_3)

# Date, Time are still string at the moment
data$datetime <- strptime(paste(Date,Time, sep=" "), format = "%d/%m/%Y %H:%M:%S")