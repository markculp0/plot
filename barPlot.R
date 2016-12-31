# My barplot

# Scientific notation off
options(scipen = 999) 

# Create df
mym <- matrix(c(2012,2013,2014,100000,1200000,550000), nrow=3,ncol = 2)
mydf <- data.frame(mym)
rm(mym)
names(mydf) <- c("Year","Paid")

# Set parameters
par(las = 0)   # Axis label style; 0 parallel, 1 horiz, 2 perp, 3 vert; 0 is default
par(mgp=c(3,1,0))   # Dist of "title" fn [1] & axis fn [2:3] labels; c(3,1,0) is default
par(mar = c(6,5,4,2) + 0.1)  # Margins on plot; c(5,4,4,2) + 0.1) is default 

# Plot graph
barplot(names.arg=mydf$Year, height = mydf$Paid/1000, yaxt="n", xlab = "Year")

title(main="Money Paid", ylab="Paid  (1,000's)")
axis(2, at=axTicks(2), labels = paste("$",format(axTicks(2), big.mark = ",")))
# or: axis(2, at=axTicks(2), labels = sprintf( "$%s", axTicks(2)))

# Save plot to file
dev.copy(png, file = "barPlot.png")

dev.off()




