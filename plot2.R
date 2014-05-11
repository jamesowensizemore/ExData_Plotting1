Initial <- read.table("household_power_consumption.txt", sep = ";", header = TRUE)

Try <- as.character(Initial[,1])

Datess <- as.Date(Try, format = "%d/%m/%Y")

Initial[,1] <- Datess

Try1 <- Initial[Initial[,1] == "2007-02-01", ]

Try2 <- Initial[Initial[,1] == "2007-02-02", ]


Final <- rbind(Try1, Try2)

Gap <- as.character(Final[,3])
Gap<- as.numeric(Gap)

num<-1:nrow(Final)

plot(num, Gap, "S", ylab = "Global Active Power (kilowatts)",
     xlab = "", axes  = FALSE)
axis(2)
box()
x <- c(0, 1480, 2880)
axis(1, at = x, labels = c("Thu", "Fri", "Sat"))
     
dev.copy(png, file = "plot2.png")
dev.off()