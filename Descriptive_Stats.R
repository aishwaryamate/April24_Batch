#Read the csv file

df <- datasets::airquality
View(df)

rm(data)

head(df)   #First 6 rows
head(df,10)
tail(df,2)

###########Summary of the data#########

summary(df)
df$Month
df$Ozone
df$Temp
Ozone
summary(df$Temp)
attach(df)
Ozone
Temp
Month

###########DATA VISUALIZATION IN R##########
#Scatter plot

plot(x = Wind,y = Temp)
plot(Ozone, Solar.R, xlab = 'Ozone level',ylab = 'Solar',
     main = 'Scatterplot Between Ozone vs Solar',
     col = '#5908d1',pch = 16)


#Plot entire df

plot(df)

#Horizontal bar plot
barplot(Month)
unique(Month)
frequency <- table(Month)
barplot(frequency)
barplot(table(Month), col = 'green')


#Histogram
hist(Ozone)
summary(df)
hist(Temp,col = '#70119c')

##Single box plot and stats

boxplot(Ozone, col = '#36e809')
boxplot(Ozone)$stats
boxplot(Ozone)$out

boxplot(Temp)

# Multiple box plots
boxplot(df)

#Multiple graphs in one canvas

age = c(21,23,25,24)

par(mfrow = c(2,2), mar = c(2,2,2,2))

plot(Ozone,Temp,main = 'Scatterplot', pch = 19, col = 'red')
hist(Ozone, col = 'green')
boxplot(Ozone,col = 'blue')
plot(Ozone, Solar.R, col = 'cyan')


#sd
sd(Temp)
mean(Temp)
#var
var(Temp)
median(Temp)
