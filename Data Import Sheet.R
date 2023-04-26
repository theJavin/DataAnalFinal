#Code to import data sets easier
#Data set name
FS_sp500_addstats <- read_excel("Data Sets/FS_sp500_addstats.xlsx")
  #FS_sp500_addstats
  #Renamed to addstats
FS_sp500_balsheets <- read_excel("Data Sets/FS_sp500_balsheets.xlsx")
  #FS_sp500_balsheets
FS_sp500_flow <- read_excel("Data Sets/FS_sp500_flow.xlsx")
  #FS_sp500_flow
FS_sp500_income <- read_excel("Data Sets/FS_sp500_income.xlsx")
  #FS_sp500_income
FS_sp500_Recent_Value <- read_excel("Data Sets/FS_sp500_Recent_Value.xlsx")
  #FS_sp500_Recent_Value
FS_sp500_stats <- read_excel("Data Sets/FS_sp500_stats.xlsx")
  #FS_sp500_stats
valueAfter2020 <- read.csv("C:/Users/Erykah Gieb/Downloads/valueAfter2020", header=FALSE)

valueAfter2020 <- read.csv("C:/Users/Erykah Gieb/Downloads/valueAfter2020")
#valueAfter2020=valueAfter2020[,-1]

#Idk what I did wrong, but the lines above don't work for me :(

#addstats=FS_sp500_addstats
#addstats
#FS_sp500_addstats

balsheets=FS_sp500_balsheets

flow=FS_sp500_flow

income=FS_sp500_income

recentvalue=FS_sp500_Recent_Value

stats=FS_sp500_stats

#value=FS_sp500_Value


head(recentvalue)
names(recentvalue)[names(recentvalue) == '...1'] <- 'Ticker'

for(i in 1:dim(value)[1])
{
  value$Date[i] = as.Date.character(value$Date[i], format = "%m/%d/%Y")
  print(i)
}
