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
finalcombo=full_join(combo12,combo1.2,
                  by='Ticker',relationship="many-to-many")
