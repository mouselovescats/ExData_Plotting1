# Plot 2
png(filename="Plot2.png", width=480, height=480)
par(mar=c(3,4,2,2))
plot(data$datetime, data$Global_active_power, type="l", ylab="Global Active Power (kilowatts)")
dev.off()