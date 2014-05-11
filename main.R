sourcePath <- './Data/household_power_consumption.txt'
rawdata <- read.table(file=sourcePath, na.strings='?', sep=';', header=T)
rawdata$Date <- as.character(rawdata$Date)

#  Capturo solo los datos que me interesan
data <- rawdata[which(rawdata$Date == '1/2/2007' | rawdata$Date == '2/2/2007' ),]
rm('rawdata')

#  convert Date and Time to date/Time types
data$Date <- strptime ( paste(data$Date, data$Time, sep=' '), format='%d/%m/%Y %H:%M:%S')
data$Time <- NULL

source("./Scripts/plot1.R")



