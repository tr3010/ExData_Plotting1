dataFile<-read.table("household_power_consumption.txt",nrows=150000, header=TRUE, sep=";", stringsAsFactors=FALSE,na.strings="?")
data<-as.Date(dataFile$Date,"%d/%m/%Y")
data1<-cbind(data,dataFile)
colnames(data1)[1]<-"Date2"
data2<-subset(data1,Date2>="2007-2-1" & Date2<="2007-2-2")
hist(data2$Global_active_power, xlab="Global Active Power (kilowatts)", main="Global Active Power", col="red")
dev.copy(png, file="Plot1.png", width=480, height=480)
dev.off()
