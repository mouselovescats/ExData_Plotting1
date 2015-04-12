# Plot 1 
png(filename="Plot1.png", width=480, height=480)
par(ps=12)
hist(data$Global_active_power, main="Global Active Power", xlab="Global Active Power (Kilowatts)", ylab="Frequency", col="red")
dev.off()