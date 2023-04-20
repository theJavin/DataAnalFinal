library(rpart)
library(rattle)

df=rbind(addstats,balsheets,flow,income,recentvalue,stats,value)

dim(addstats)
dim(balsheets)
dim(flow)
dim(income)
dim(recentvalue)
dim(stats)
dim(value)
head(recentvalue)
head(flow)

#the data sets need to have the same amount of columns and rows
#We either need to manually combine the data and sort rows
#by tickers, or delete stuff. I'm thinking if we want to code
#it we would have to delete stuff and get R to bind them/sort them by their
#ticker, which should be marked in the first column of each data set.