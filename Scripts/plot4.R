## Plot 4
png(filename='./Plots/plot4.png', width=480, height=480)
par(mfrow=c(2,2))
plot(y=data$Global_active_power, x=data$Date, type='l', xlab='', ylab='Global Active Power (Kilowatts)')
plot(y=data$Voltage, x=data$Date, type='l', xlab='datetime', ylab='Voltage')

plot(y=data$Sub_metering_1, x=data$Date, type='l', xlab='', ylab='Global Active Power (Kilowatts)')
lines(data$Sub_metering_2, x=data$Date,type='l', col='red')
lines(data$Sub_metering_3, x=data$Date,type='l', col='blue')

## Creando las leyendas
legend("topright", col= c("black", "blue", "red"), cex = 0.95, lty=1, legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), bty="n")


plot(y=data$Global_active_power, x=data$Date, type='l', xlab='datetime', ylab='Global_reactive_power')

dev.off()