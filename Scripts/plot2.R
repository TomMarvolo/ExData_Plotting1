## Plot 2
png(filename='./Plots/plot2.png', width=480, height=480)
plot(y=data$Global_active_power, x=data$Date, type='l', xlab='', ylab='Global Active Power (Kilowatts)')

dev.off()
