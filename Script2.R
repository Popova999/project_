trade1 <- read.csv2("C:/Users/Admin/Desktop/tasks R/trade1.csv", row.names=1) #загружаем данные
dinamika1 <- ts(trade1) # преобразуем данные во временной ряд
str(dinamika1) #проверка преобразования
(acf(dinamika1, main=""))#проверка наличия периодичности и тренда,  график автокорреляций для експорта древесины
plot(stl((ts(dinamika1[,1],frequency=8)),s.window="periodic", robust=TRUE))
  
     