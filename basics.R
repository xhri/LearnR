
#Load CSV data
bp = read.csv("BP.csv")

#Some basic commands
head(bp)
summary(bp)
plot(bp)


?plot

plot(bp$systolic)
?median

median(bp$systolic)
average(bp$systolic)
mean(bp$systolic)

head(bp)
aggregate(bp[,4:5], list(bp$date), mean)
