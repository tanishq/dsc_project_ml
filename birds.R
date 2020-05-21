info = read.csv('database.csv')
# reading the main csv file
info2 = as.data.frame(table(info$Species.Name))
# calculating the frequency of each species
highest_bird = subset(info2, info2$Freq == max(info2$Freq))
# finding the species with the highest frequency
print(highest_bird)
# this will give the species name which has hit aircrafts the most number of times


