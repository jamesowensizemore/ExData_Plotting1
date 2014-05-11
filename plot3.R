Initial <- read.table("household_power_consumption.txt", sep = ";", header = TRUE)

Try <- as.character(Initial[,1])

Datess <- as.Date(Try, format = "%d/%m/%Y")

Initial[,1] <- Datess

Try1 <- Initial[Initial[,1] == "2007-02-01", ]

Try2 <- Initial[Initial[,1] == "2007-02-02", ]


Final <- rbind(Try1, Try2)

num<-1:nrow(Final)

Sub1 <- as.character(Final[,7])
Sub1 <- as.numeric(Sub1)

Sub2 <- as.character(Final[,8])
Sub2 <- as.numeric(Sub2)

Sub3 <- as.character(Final[,9])
Sub3 <- as.numeric(Sub3)

plot(num, Sub1, "S", ylab = "Energy sub metering", xlab = "", axes = FALSE)

axis(2)
box()
x <- c(0, 1480, 2880)
axis(1, at = x, labels = c("Thu", "Fri", "Sat"))
points(num, Sub2, col = "red", "S")

points(num, Sub3, col = "blue", "S")

legend("topright", pch = "___", col = c("black", "red", "blue"), 
       legend = c("Sub_metering_1","Sub_metering_2", "Sub_metering_3"))

dev.copy(png, file = "plot3.png")
dev.off()