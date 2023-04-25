library(readr)
FS_sp500_addstats <- read_csv("data_origin/FS_sp500_addstats.csv")
FS_sp500_balsheets <- read_csv("data_origin/FS_sp500_balsheets.csv")
FS_sp500_flow <- read_csv("data_origin/FS_sp500_flow.csv")
FS_sp500_income <- read_csv("data_origin/FS_sp500_income.csv")
FS_sp500_Recent_Value <- read_csv("data_origin/FS_sp500_Recent_Value.csv")
FS_sp500_stats <- read_csv("data_origin/FS_sp500_stats.csv")



addstats=FS_sp500_addstats

balsheets=FS_sp500_balsheets

flow=FS_sp500_flow

income=FS_sp500_income

recentvalue=FS_sp500_Recent_Value

stats=FS_sp500_stats

value=FS_sp500_Value

head(FS_sp500_Recent_Value)
names(FS_sp500_Recent_Value)[names(FS_sp500_Recent_Value) == '...1'] <- 'Ticker'

for(i in 1:dim(value)[1])
{
  value$Date[i] = as.Date(value$Date[i])
  print(i)
  print(value$Date[i])
}
