library(rpart)
library(rattle)
library(dplyr)

#first round of joining
combo1=full_join(addstats,balsheets,
          by='Ticker',relationship = "many-to-many")
combo2=full_join(flow,income,
                 by='Ticker',relationship = "many-to-many")

combo3=full_join(value,stats,
                 by='Ticker',relationship = "many-to-many")                 

#recentvalue has no Ticker column, can't join

#second round of joining
combo12=full_join(combo1,combo2,
                  by='Ticker',relationship="many-to-many")

#last join
finalcombo=full_join(combo3,combo12,
                     by='Ticker',relationship="many-to-many")
#final combo is too big, need to make smaller