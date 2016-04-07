plot3 <- function(fileName='rawdata/household_power_consumption.txt'){
     library(lubridate)
     
     t1 <- read.table(fileName, sep=';', na.strings = '?', header = TRUE)
     t2 <- subset(t1,dmy(t$Date) %in% c(ymd("2007-02-01"), ymd("2007-02-02")))
     
     
     png(filename = "plot3.png", width = 480, height = 480)
     
     plot(strptime(paste(dmy(t2$Date), t2$Time), "%Y-%m-%d %H:%M:%S"), t2$Sub_metering_1, 
          ylim=c(0,max(t2$Sub_metering_1)), type = 'n', ylab = "Energy sub metering", xlab = "")
     lines(strptime(paste(dmy(t2$Date), t2$Time), "%Y-%m-%d %H:%M:%S"), t2$Sub_metering_1, type = 'l')
     lines(strptime(paste(dmy(t2$Date), t2$Time), "%Y-%m-%d %H:%M:%S"), t2$Sub_metering_2, type = 'l', col = 'red')
     lines(strptime(paste(dmy(t2$Date), t2$Time), "%Y-%m-%d %H:%M:%S"), t2$Sub_metering_3, type = 'l', col = 'blue')
     legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lwd = 1, col = c("black", "red", "blue"))
     
     dev.off()
}