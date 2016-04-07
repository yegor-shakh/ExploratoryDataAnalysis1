plot1 <- function(fileName='rawdata/household_power_consumption.txt'){
     library(lubridate)
     
     t1 <- read.table(fileName, sep=';', na.strings = '?', header = TRUE)
     t2 <- subset(t1,dmy(t$Date) %in% c(ymd("2007-02-01"), ymd("2007-02-02")))
     
     
     png(filename = "plot1.png", width = 480, height = 480)
     p <- hist(t2$Global_active_power, col="red", main = "Global Active Power", xlab = "Global Active Power (kilowatts)")
     dev.off()
}