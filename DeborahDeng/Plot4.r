png(filename="Plot4.png", width=480, height=480)
par(mfcol = c(2,2), ps=11, font=2, mar=c(4,4,4,1.5))
with(data, {
        plot(datetime, Global_active_power, type="l", xlab="", ylab="Global Active Power")
        
        plot(datetime, Sub_metering_1, type="n", xlab="", ylab="Energy Sub Metering")
        lines(datetime, Sub_metering_1, type="l", col="black")
        lines(datetime, Sub_metering_2, type="l", col="red")
        lines(datetime, Sub_metering_3, type="l", col="blue")
        legend("topright", legend=c('Sub_metering_1','Sub_metering_2','Sub_metering_3'), 
               bty="n", col=c("black","red","blue"), lty=c(1,1,1))
                
        plot(datetime, Voltage, type="l")
        plot(datetime, Global_reactive_power, type="l")
   })
dev.off()