florist <- read.table("florist.txt", header = T, sep = ",")
florist_by_day <- aggregate(florist$price, by = list(florist$date), FUN = length)
names(florist_by_day) <- c('date', 'no_of_bouquets')
# plot(florist_by_day)
roses <- subset(florist, florist$bouquet == "roses")
# plot(roses)
roses_by_day <- aggregate(roses$price, by = list(roses$date), FUN = length)
names(roses_by_day) <- c("date", "number_of_bouquets")
# plot(roses_by_day)
roses_by_week <- aggregate(roses$price, by = list(roses$year, roses$week), FUN = sum)
str(roses_by_week)

plot(roses_by_week)
