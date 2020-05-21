info = read.csv('database.csv')
info2 = info[, grepl("Damage", names(info))]
number = ncol(info2)
info3 = data.frame(a = c(), b= c())
v = c('a', 'b')
v2 = c(1,2)
current =1
while(current < (number + 1)){
  column = info2[current]
  name = names(info2)[current]
  summation = sum(column)
  info4 = data.frame(a = name, b = summation)
  info3 = rbind(info3, info4)
  current = current+1
}
highest = subset(info3, info3$b == max(info3$b))
png(file = 'graphdamage.png', width = 720, height = 720,
    units = "px", pointsize = 12, res = 90,
    restoreConsole = TRUE)
barplot(info3$b, names.arg = info3$a, xlab = 'Part', 
        ylab = 'No. of times ecah part has got damaged',
         cex.names=.5, ylim = c(0, 19000),
        col = 'grey' )
dev.off()
