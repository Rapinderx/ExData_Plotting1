## Plot 1 

setwd("~/Desktop/coursera/ExData_Plotting1/data")

if(!file.exists("./data/"){dir.create("./data/")})
  
household <- read.table("./data/household_power_consumption.txt", header = TRUE, 
                        sep = ";", na.strings = "?", nrows = 2075260, 
                        check.names = FALSE, stringsAsFactors = FALSE, 
                        comment.char = "", quote = '\"')
sub_household <- subset(household, Date %in% c("1/2/2007", "2/2/2007"))
sub_household_date <- as.Date(household$Date, format = "%d %m %y")
hist(sub_household$Global_active_power, main = "Global Active Power", 
       xlab = "Global Active Power (kilowatts)", ylab = "Frequency", col = "red")


# Creating Plot

hist(sub_household$Global_active_power, main = "Global Active Power", 
     xlab = "Global Active Power (kilowatts)", ylab = "Frequency", col = "red")

# Creating PNG

dev.copy(png, file="plot1.png", width=480, height=480)
dev.off()