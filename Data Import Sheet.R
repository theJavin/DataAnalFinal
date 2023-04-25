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
FS_sp500_Value <- read_csv("Data Sets/FS_sp500_Value.csv")
  #FS_sp500_Value

#Idk what I did wrong, but the lines above don't work for me :(

addstats=FS_sp500_addstats
addstats
FS_sp500_addstats

balsheets=FS_sp500_balsheets

flow=FS_sp500_flow

income=FS_sp500_income

recentvalue=FS_sp500_Recent_Value

stats=FS_sp500_stats

value=FS_sp500_Value

head(FS_sp500_Recent_Value)
names(FS_sp500_Recent_Value)[names(FS_sp500_Recent_Value) == '...1'] <- 'Ticker'


