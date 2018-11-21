temperature_level <- c('cold','chilly', 'normal', 'warm', 'heat')
wind_level <- c('calm', 'light', 'moderate','strong', 'gale', 'storm')
precipitation_level <- c('none', 'light', 'moderate', 'heavy', 'extreme')
cloud.cover_level <- c('clear', 'scattered', 'broken', 'overcast')
#Level distinguishing done.
wind <- factor(c('strong', 'moderate', 'light', 'light', 'light', 'light', 'calm', 'calm'))
temperature <- factor(c('chilly', 'chilly', 'cold', 'cold', 'cold', '	chilly', 'normal', 'normal'))
precipitation <- factor(c('light', 'heavy', 'light', 'none', 'light', 'moderate', 'none', 'light'))
cloud.cover <- factor(c('overcast', 'overcast', 'scattered', 'broken', 'broken', 'overcast', 'scattered', 'overcast'))
weather <- data.frame(wind, temperature, precipitation, cloud.cover)
#Factors and data.frame done.
temperature_level_r <- rank(temperature)
precipitation_level_r <- rank(precipitation)
wind_level_r <- rank(wind)
cloud.cover_level_r <- rank(cloud.cover)
weather_numeric_frame <- data.frame(temperature_level_r, precipitation_level_r, wind_level_r, cloud.cover_level_r)
#Ranking is done.
daisy(weather_numeric_frame)
#Dissimilarity