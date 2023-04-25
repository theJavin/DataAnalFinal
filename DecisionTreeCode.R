library(rpart)
library(rattle)
install.packages('dplyr')
library(dplyr)

#first round of joining
combo1=full_join(addstats,balsheets,
          by='Ticker',relationship = "many-to-many")
combo2=full_join(flow,income,
                 by='Ticker',relationship = "many-to-many")

combo3=full_join(value,stats,
                 by='Ticker',relationship = "many-to-many")                 

#recentvalue has no Ticker column, can't join
combo1.2=full_join(combo3,FS_sp500_Recent_Value,
                   by='Ticker',relationship="many-to-many")
#second round of joining
combo12=full_join(combo1,combo2,
                  by='Ticker',relationship="many-to-many")


#Final combination of all sets
data=full_join(combo12,combo1.2,
                  by='Ticker',relationship="many-to-many")



#training data
trainsample=function(dataset,trainpop){
  return(sample(nrow(dataset),
                round(nrow(dataset)*trainprop,0)))
}
traindata=trainsample(data,0.7)

#test data is just data[-train,]

tree1=rpart(data~.,data=data[train,])
plot(tree1)
fancyRpartPlot(tree1)

tree2=rpart(data~.,data=data[-train,])
plot(tree2)
fancyRpartPlot(tree2)