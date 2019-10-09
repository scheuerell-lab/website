library(showtext)

## setup
showtext_auto()
font_add(family = 'FontAwesome', regular = 'FontAwesome.otf')

## set color
clr <- "white" # "#ffdd55"

## hexcodes for fontawesome icons
fas <- c(flask = "f0c3", comments = "f086", laptop = "f109")

## plotting coordinates
coord <- data.frame(x = c(-1,0,1), y = c(-1,1,-1)*1.73/2)
coord$y <- coord$y + 0.3

## save as svg for logo
svg(file = "appel.svg", height = 3.4, width = 3, bg = NA)

par(mai = c(0.4,0,0,0), omi = c(0, 0, 0, 0), family = 'RobotoCondensed')
plot(coord$x, coord$y, type = "n", ann = FALSE, axes = FALSE,
     xlim = c(-1,1) * 3, ylim = c(-1,1) * 3, asp = 1)
mtext("AppEL", side = 1, line = 0.5, cex = 4, col = "white")

symbols(x = 0, y = 0, circles = 2.5, lwd = 5, fg = "white",
        inches = FALSE, add = TRUE)

par(family = 'FontAwesome')
points(coord[,1], coord[,2], pch = -as.hexmode(fas), cex = 4, col = clr)

dev.off()


## save as .png for conversion to .ico
png(file = "appel.png", height = 3, width = 3, bg = NA, units = "in", res = 300)

par(mai = c(0,0,0,0), omi = c(0, 0, 0, 0))
plot(coord$x, coord$y, type = "n", ann = FALSE, axes = FALSE,
     xlim = c(-1,1) * 2.4, ylim = c(-1,1) * 2.4, asp = 1)

symbols(x = 0, y = 0, circles = 2.5, lwd = 5, fg = "#4b2e83", bg = "#4b2e83",
        inches = FALSE, add = TRUE)

par(family = 'FontAwesome')
points(coord[,1], coord[,2], pch = -as.hexmode(fas), cex = 5, col = clr)

dev.off()


