plot2 <- function(fileName='rawdata/household_power_consumption.txt'){
     library(lubridate)
     
     t1 <- read.table(fileName, sep=';', na.strings = '?', header = TRUE)
     t2 <- subset(t1,dmy(t$Date) %in% c(ymd("2007-02-01"), ymd("2007-02-02")))
     
     
     png(filename = "plot2.png", width = 480, height = 480)
     plot(strptime(paste(dmy(t2$Date), t2$Time), "%Y-%m-%d %H:%M:%S"), t2$Global_active_power, type = 'l',
          ylab = "Global Active Power (kilowatts)", xlab = "")
     dev.off()
}