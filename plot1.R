da<-read.table("household_power_consumption.txt",sep=";",header=TRUE)
da[,1]<-as.Date(da[,1],format="%d/%m/%Y")
temp<-da[da$Date=="2007-2-1"|da$Date=="2007-2-2",]
png(file = "plot1.png",width = 480, height = 480, units = "px")
with(faithful, hist(as.numeric(as.character(temp[,3])),xlab="Global Active Power(kilowatts)",main="Global Active Power",col="red"))
dev.off()
