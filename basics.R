
#Load CSV data
bp = read.csv("BP.csv")

#Some basic commands
head(bp)
summary(bp)
plot(bp)
median(bp$systolic)
mean(bp$systolic)

?plot
plot(bp$time_of_day, bp$systolic)


?factor
bp$time_of_day_sorted <- factor(bp$time_of_day, c("morning", "midday", "evening"))
plot(bp$time_of_day_sorted, bp$systolic)


?table
time_data <- table(bp$hour)
barplot(time_data)

time_data_plus <- table(factor(bp$hour,levels = 6:24))
barplot(time_data_plus)


# Compare Morning & Evening side by side
par(mfrow=c(2,1))

morning_diastolic <- bp$diastolic[bp$time_of_day=="morning"]
morning_systolic <- bp$systolic[bp$time_of_day=="morning"]

plot(morning_diastolic, morning_systolic, main="Morning", xlab="Diastolic", ylab="Systolic")

evening_diastolic <- bp$diastolic[bp$time_of_day=="evening"]
evening_systolic <- bp$systolic[bp$time_of_day=="evening"]

plot(evening_diastolic, evening_systolic, main="Evening", xlab="Diastolic", ylab="Systolic")



# Compare Morning & Evening side by side using function
daypartplot <- function(time) {
  tmp_diastolic <- bp$diastolic[bp$time_of_day==time]
  tmp_systolic <- bp$systolic[bp$time_of_day==time]
  
  plot(tmp_diastolic, tmp_systolic, main=time, xlab="Diastolic", ylab="Systolic")
}

par(mfrow=c(2,1))
daypartplot("morning")
daypartplot("evening")



# Compare Morning & Evening on 1 plot
par(mfrow=c(1,1))
plot(bp$diastolic,bp$systolic)
points(bp$diastolic[bp$time_of_day=="morning"],bp$systolic[bp$time_of_day=="morning"],col="red")
points(bp$diastolic[bp$time_of_day=="evening"],bp$systolic[bp$time_of_day=="evening"],col="blue")
