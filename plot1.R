Initial <- read.table("household_power_consumption.txt", sep = ";", header = TRUE)

Try <- as.character(Initial[,1])

Datess <- as.Date(Try, format = "%d/%m/%Y")

Initial[,1] <- Datess

Try1 <- Initial[Initial[,1] == "2007-02-01", ]

Try2 <- Initial[Initial[,1] == "2007-02-02", ]


Final <- rbind(Try1, Try2)

Gap <- as.character(Final[,3])
Gap<- as.numeric(Gap)

hist(Gap, xlab = "Global Active Power (kilowatts)", 
     main = "Global Active Power", col = "red")

dev.copy(png, file = "plot1.png")
dev.off()