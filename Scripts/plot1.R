## Plot 1
png(filename='./Plots/plot1.png', width=480, height=480)
hist(data$Global_active_power, xlab='Global Active Power (kilowatts)', col='red', main='Global Active Power')
dev.off()