#question 1
#importing libraries
library(readr)
library(ggplot2)
dat <- read_csv("dataSets/EconomistData.csv")
#creating scatterplot and establishing y and x axis
#color based on the region column
#size is adjusted by HDI.Rank column
ggplot(dat, aes(x = CPI, y = HDI, color = Region, size = HDI.Rank)) +
  #adding points to the scatterplot
  geom_point() +
  #adding the color
  scale_color_manual(values = c("Region" = "blue")) +
  
  #question 2
  #adding a smoothing line
  geom_smooth(method = "auto")
#smoothing wiith linear model
ggplot(dat, aes(x = CPI, y = HDI)) +
  geom_smooth(method = "lm")
#overlaying smoothing line on top of the scatterplot
ggplot(dat, aes(x = CPI, y = HDI)) +
  geom_line(stat = "smooth", method = "auto")
#overlaying smoothing line using loess
ggplot(dat, aes(x = CPI, y = HDI)) +
  geom_smooth(span = 0.2)

#question 3
#creating scatterplot and adding color to the points to indicate region
ggplot(dat, aes(x = CPI, y = HDI, color = Region)) +
  #labeling the axis and modifying the color scales
  labs(x = "Corruption Perception Index",
       y = "Human Development Index",
       color = "Region") +
  #modifying color scale
  scale_color_manual(values = c("Region1" = "red", "Region2" = "blue", ...))