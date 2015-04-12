png(filename = "Plot3.png", width=480, height=480)

par(ps=12, mar=c(3,4,2,2))
with(data, plot(datetime, Sub_metering_1, type="n", ylab="Energy Sub Metering"))

with(data, lines(datetime, Sub_metering_1, type="l", col="black"))
with(data, lines(datetime, Sub_metering_2, type="l", col="red"))
with(data, lines(datetime, Sub_metering_3, type="l", col="blue"))

legend("topright", legend=c('Sub_metering_1','Sub_metering_2','Sub_metering_3'), col=c("black","red","blue"), lty=c(1,1,1))

dev.off()