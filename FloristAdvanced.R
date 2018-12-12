florist <- read.table("florist.txt", header = T, sep = ",")
florist_by_day <- aggregate(florist$price, by = list(florist$date), FUN = length)
names(florist_by_day) <- c('date', 'no_of_bouquets')
plot(florist_by_day$no_of_bouquets)
florist_by_day[florist_by_day$no_of_bouquets > 100,]
roses <- subset(florist, florist$bouquet == "roses")
roses_by_day <- aggregate(roses$price, by = list(roses$date), FUN = length)
names(roses_by_day) <- c("date", "number_of_bouquets")
plot(roses_by_day)
#Roses_by_day implemented
roses_by_week <- aggregate(roses$price, by = list(roses$year, roses$week), FUN = sum)
roses_by_week <- roses_by_week[order(roses_by_week$year, roses_by_week$week),]
names(roses_by_week) <- c("year", "week", "total")
plot(roses_by_week$total, type = 'l')

roses_bin_1 <- binning(roses_by_week$total ,5, FUN = mean)
roses_bin_2 <- binning(roses_by_week$total ,5, FUN = median)
matplot(cbind(roses_by_week$total, roses_bin_1, roses_bin_2), type = "l")

