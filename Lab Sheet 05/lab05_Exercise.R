#Q1
setwd("C:\\Users\\it24102821\\Desktop\\IT24102821")
data <- read.table("Exercise - Lab 05.txt", header=TRUE, sep=",")
fix(data)
attach(data)

#Q2
names(data)<-c("X1")
attach(data)
histrogram <- hist(
  X1,
  main = "Histogram for Deliver times", 
  breaks = seq(20, 70, length=10), 
  right = FALSE)

#Q3
#The distribution is approximately symmetric and bell-shaped, resembling a normal distribution.

#Q4
breaks <- round(histrogram$breaks)
breaks
freq <- histrogram$counts
freq
mids <- histrogram$mids
mids

cum.freq <- cumsum(freq)

new <- c()

for(i in 1:length(breaks)){
  if(i==1){
    new[i] = 0
  }else{
    new[i] = cum.freq[i-1]
  }
}

plot(breaks, new , 
     type = "l", 
     main = "Cumalative Frequency Polygon for deliver times", 
     xlab = "Shareholders", 
     ylab = "Cumulative Frequncy", 
     ylim = c(0,max(cum.freq)))

cbind(Upper = breaks, CumFreq = new)