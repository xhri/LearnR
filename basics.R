
#Load CSV data
bp = read.csv("BP.csv")

#Some basic commands
head(bp)
summary(bp)
plot(bp)
?plot

plot(bp$time_of_day, bp$systolic)

?factor

bp$time_of_day_sorted <- factor(bp$time_of_day, c("morning", "midday", "evening"))
plot(bp$time_of_day_sorted, bp$systolic)


?median

median(bp$systolic)
average(bp$systolic)
mean(bp$systolic)

head(bp)
aggregate(bp[,4:5], list(bp$date), mean)
