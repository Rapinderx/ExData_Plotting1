## Plot 2

setwd("~/Desktop/coursera/ExData_Plotting1/data")

if(!file.exists("./data/"){dir.create("./data/")})
  
household <- read.table("./data/household_power_consumption.txt", header = TRUE, 
                        sep = ";", na.strings = "?", nrows = 2075260, 
                        check.names = FALSE, stringsAsFactors = FALSE, 
                        comment.char = "", quote = '\"')
sub_household <- subset(household, Date %in% c("1/2/2007", "2/2/2007"))
sub_household$Date <- as.Date(sub_household$Date, format="%d/%m/%Y")
datetime <- paste(as.Date(sub_household$Date), sub_household$Time)
sub_household$Datetime <- as.POSIXct(datetime)


#Creating Plot 
with(sub_household, {
  plot(Global_active_power~Datetime, type="l",
       ylab="Global Active Power (kilowatts)", xlab="")
})


#Creating PNG 

dev.copy(png, file="plot2.png", height=480, width=480)
dev.off()


