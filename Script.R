trade <- read.csv2("C:/Users/Admin/Desktop/tasks R/trade.csv", row.names=1, na.strings="") #çàãğóæàåì äàííûå
dinamika <- ts(trade) # äëÿ õğàíåíèÿ äàííûõ â îáúåêòå âğåìåííîãî ğÿäà ìû èñïîëüçóåì ôóíêöèş ts().
plot (dinamika, xlab = "Ïåğ³îä", ylab = "Åêñïîğò äåğåâèíè") #ïîñòğîåíèå ãğàôèêà ñ îòñóòñòâóşùèìè çíà÷åíèÿìè
sum(is.na(dinamika)) #îïğåäåëÿåì êîëè÷åòñâî íåäîñòàşùèõ çíà÷åíèé
mean(dinamika, na.rm = TRUE) #âû÷èñëÿåì ñğåäíåå çíà÷åíèå, íå ó÷èòûâàÿ îòñóòñòâóşùèå çíà÷åíèÿ
dinamika[is.na(dinamika)] <- mean(dinamika, na.rm = TRUE) #çàìåíÿåì ïóñòûå çíà÷åíèÿ íà ñğåäíåå
plot (dinamika, xlab = "Ïåğ³îä", ylab = "Åêñïîğò äåğåâèíè") #ïîñòğîåíèå ãğàôèêà ñ âîññòàíîâëåííûìè äàííûìè

