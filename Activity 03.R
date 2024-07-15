library(ggplot2)
##plot
qplot (x = drat, y = mpg, data = mtcars)
##plot Miles per Gallon vs Weight
qplot(x = drat, y = mpg, data = mtcars,
      main = "Miles per Gallon vs Rear axle ratio",
      xlab = "Rear axle ratio",
      ylab = "Miles per US Gallon",
      xlim = c(1, 6),
      ylim = c(0, 40))
# Create a basic plot from the mtcars data
basicCarPlot <- qplot(drat, mpg, data = mtcars)
# Modify the plot to include a title
basicCarPlot <- basicCarPlot + 
  ggtitle("Miles per Gallon vs Rear axle ratio")
# Now print the plot
basicCarPlot  

# Ensure cyl variable is of the right type by fixing in the data
mtcars$cyl <- factor(mtcars$cyl)
qplot(cyl, mpg, data = mtcars, geom = "boxplot")

# Plot Types
grep("^geom", objects("package:ggplot2"), value = TRUE)

qplot(cyl, mpg, data = mtcars) + geom_boxplot()

# Combining Plot Types

qplot(drat, mpg, data = mtcars) + geom_smooth(method = "lm")

qplot(drat, mpg, data = mtcars, geom= c("point", "smooth"), method = "lm")

# ------------------------------------------------------------------------------
# Aesthetics

qplot(x = long, y = lat, data = quakes, size = mag, col = -depth) +
  ggtitle("Locations of Earthquakes off Fiji") +
  xlab("Longitude") + ylab("Latitude")
