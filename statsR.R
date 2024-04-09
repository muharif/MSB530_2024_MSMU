#Today we are going to learn on the basics of R.
#We are going to learn about vector, matrices, dataframe, and operations that you can do with it.
#Moreover, we'll try to do basic descriptive statistics and simple plotting of the data for exploration.

#Try to understand the meaning of each lines/commands. You'll have to use it in the exercises.

#Same as yesterday
###################
#VECTOR AND MATRIX#
###################

vector1<-c(1,2,3,7,8)
class(vector1)

vector1*a
vector1+a

vector2<-c(3,2,1,-3,-9)
vector1+vector2

## What happen here?
vector3<-c(3,2,1,-3)
vector1+vector3

#Matrix
airspeed <- matrix(c(10,15,7,10),2,2)
colnames(airspeed)
colnames(airspeed) <- c("laden","unladen") 
colnames(airspeed)[1]
colnames(airspeed)[2] <- "Maria"

A<-matrix(c(1,2,8,3,2,1),3,2)
A
B<-matrix(c(3,6,1,9,2,7),2,3)
B
C<-matrix(c(1:6),2,3)
C

A%*%B
A*B #why error?
B%*%A # why is it different with A%*%B?

B*C 
B%*%C #why error?



a<-2
A*a
A+a

Matrix1<-matrix(1,2,2)
Matrix1[1,1] <- 1
Matrix1[1,2] <- 3
Matrix1[2,1] <- 2
Matrix1[2,2] <- -2
Matrix1

Matrix2<-matrix(c(1,2,3,-2),2,2)
Matrix2
rownames(Matrix2) <- c("Row1","Gordon")
Matrix2[1,1] 
Matrix2["Gordon",1] 


#######
#LISTS#
#######

l <- list(1, 2, 3)
str(l) #what is this?

vec1 <- letters
vec2 <- 1:4
mat1 <- matrix(1:100, nrow = 5)
df1 <- as.data.frame(cbind(10:1, 91:100))
u.2 <- list(vec1, vec2, mat1, df1, l)
str(u.2)

u.2[1]
str(u.2[1])

u.2[[1]]
str(u.2[[1]])

u.2[[4]][,2]

############
#DATAFRAMES#
############

vector1 <- 1:10
vector2 <- letters[1:10]
vector3 <- rnorm(10, sd = 10)
dfr <- data.frame(vector1, vector2, vector3, stringsAsFactors = FALSE) #read the help file about |stringsAsFactors"
str(dfr)
View(dfr)

rownames(dfr) = paste('RowNum',1:10)
colnames(dfr) = list('colnum1','colnum2','colnum3')
str(dfr)
View(dfr)

dim(dfr)

dfr[1,2]='A'
dfr[1]='A'
dfr['RowNum 3','colnum3'] = 1e4

############
#OPERATIONS#
############

vector1<-c(1,2,3,7,8)
matrix1 <- matrix(c(10,15,7,10,9,12,14,19),4,2)
colnames(matrix1) <- c("laden","unladen") 
df1 <- as.data.frame(matrix1)

sum(vector1)
mean(vector1)
median(vector1)
sd(vector1)

sum(matrix1)
colSums(matrix1)
rowSums(matrix1)
sd(matrix1)

mean(matrix1)
rowMeans(matrix1)
colMeans(matrix1)

sum(df1)
colSums(df1)
rowSums(df1)

rowMeans(df1)
colMeans(df1)

###############
#VISUALIZATION#
###############

install.packages('ggplot2') #do this just once

library(ggplot2)
mtcars = mtcars #built-in datasets

ggplot(mtcars, aes(x=wt, y=mpg)) + geom_point()
ggplot(mtcars, aes(x=wt, y=mpg)) +
  geom_point(size=2, shape=23)

p <- ggplot(mtcars, aes(x=mpg)) + 
  geom_density()
p
p+ geom_vline(aes(xintercept=mean(mpg)),
              color="blue", linetype="dashed", size=1)

p <- ggplot(mtcars,aes(x=cyl,y=mpg, group=cyl)) + geom_boxplot()
p
p + coord_flip()

heatmap(as.matrix(mtcars), scale="column")

##############
#Examples#
##############

library(ggplot2)

#Load file "DATA_SET_REFERENCE_1.txt" in "Data" folder
df1 = read.csv('Data/DATA_SET_REFERENCE_1.csv',sep=',',stringsAsFactors = F, row.names = 1)
View(df1)

#Sort dataframe based on the 'Weight' columns
#hint : order

temp = df1[order(df1[,'Weigth']),]

#calculate the standard deviation of 'Age' column (sd)

sd(df1[,'Age'])

#Using logical operator, show that the mean of 'LDL' is higher than 'Sugar_blood' (mean)

mean_LDL = mean(df1[,'LDL'])
mean_SB = mean(df1[,'Sugar_blood'])

mean_LDL > mean_SB

mean(df1[, 'LDL']) > mean(df1[, 'Sugar_blood'])

#Using iteration/for loop, print the mean weight of the patients based on the "Color_house". Which "Color_house" has higher weight in average?

temp = mean(df1[df1[,'Color_house'] == 'Red','Weigth'])

for(color in c('Blue','Brown','Red')){
  temp = mean(df1[df1[,'Color_house'] == color,'Weigth'])
  print(color)
  print(temp)
}

for(color in c('Blue','Brown','Red')){
  temp = mean(df1[df1[,'Color_house'] == color,'Weigth'])
  print(paste(color,temp,'kg'))
}

#how many patients have enough sleep? (>8 hours)

dim(df1[df1$Sleep_hours > 8,])[1]

#Which house color has in average the highest level of hospitalization?

for(color in c('Blue','Brown','Red')){
  temp = mean(df1[df1[,'Color_house'] == color,'Hospital_times'])
  print(paste(color,temp,'times'))
}

#Make a boxplot of "Sugar_blood" grouped by house color. Which house color has highest Blood sugar average?
#(BONUS point if you can make the boxes to represent their house color)

ggplot(df1,aes(x=Color_house,y=Sugar_blood, group=Color_house)) + geom_boxplot()

#Older patients (>70 years old) decided to paint their house Green. Update the dataframe.

df1[df1$Age > 70,'Color_house'] = 'Green'

#The heavier patients (>100kg) decided to exercise. They took their exercise time from their sleeping time.
#They reduced their sleeping time by 20%. Update the dataframe.

df1[df1$Weigth > 100, 'Sleep_hours'] = df1[df1$Weigth > 100, 'Sleep_hours'] * 0.8

#Make a new dataframe with only 'Age', 'Weight', and 'Sugar_blood' columns.

df2 = df1[,c('Age','Weigth','Sugar_blood')]

#Make a heatmap of 'Age', 'Weight', and 'Sugar_blood' columns. 

heatmap(as.matrix(df2), scale="column")

#Based on the clusters in the heatmap, which 2 columns has the highest similarity? (Check the top dendrogram)

#Show the density plot of 'Weight' and 'Sugar_blood' in the same figure. Include the median of both variables in different color.

p <- ggplot(df1, aes(x=Sugar_blood)) + geom_density()
p + geom_vline(aes(xintercept=median(Sugar_blood)),
               color="blue", linetype="dashed", size=1)

#if we want to add mean too
p + geom_vline(aes(xintercept=median(Sugar_blood)), color="blue", linetype="dashed", size=1) + 
  geom_vline(aes(xintercept=mean(Sugar_blood)),color="black", linetype="dashed", size=1)
##############
#Excercises#
##############

#Using similar approaches as before, summarize "DATA_SET_REFERENCE_2.txt" in "Data" folder.
#It is ok to make your own "story".
#Make a mini report (max 2 paragraph) in Microsoft Word about the data summary. Put some plots/figures (minimum 3 plots) to support your summary.
#Upload the report together with your R script.



