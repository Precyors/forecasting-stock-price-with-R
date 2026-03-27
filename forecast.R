library(quantmod)
getSymbols("AAPL", src = "yahoo", from = "2020-01-01", to = "2021-01-01")
head(AAPL)
# 
chartSeries(AAPL, theme = chartTheme("white"))
apple_close <- Cl(AAPL)

#closing price
plot(apple_close,
     main="Apple Stock Closing Price",col="blue")
# forecast
library(forecast)
apple_ts <- ts(apple_close)
model <- auto.arima(apple_ts)
forecast_values <- forecast(model, h=30)
plot(forecast_values)

forecast_values

