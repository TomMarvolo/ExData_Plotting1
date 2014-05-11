## Plot 3
png(filename='./Plots/plot3.png', width=480, height=480)
plot(y=data$Sub_metering_1, x=data$Date, type='l', xlab='', ylab='Global Active Power (Kilowatts)')
lines(data$Sub_metering_2, x=data$Date,type='l', col='red')
lines(data$Sub_metering_3, x=data$Date,type='l', col='blue')

## Creando las leyendas
legend("topright", col= c("black", "blue", "red"), cex = 0.95, lty=1, legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
dev.off()
