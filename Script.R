trade <- read.csv2("C:/Users/Admin/Desktop/tasks R/trade.csv", row.names=1, na.strings="") #��������� ������
dinamika <- ts(trade) # ��� �������� ������ � ������� ���������� ���� �� ���������� ������� ts().
plot (dinamika, xlab = "�����", ylab = "������� ��������") #���������� ������� � �������������� ����������
sum(is.na(dinamika)) #���������� ���������� ����������� ��������
mean(dinamika, na.rm = TRUE) #��������� ������� ��������, �� �������� ������������� ��������
dinamika[is.na(dinamika)] <- mean(dinamika, na.rm = TRUE) #�������� ������ �������� �� �������
plot (dinamika, xlab = "�����", ylab = "������� ��������") #���������� ������� � ���������������� �������

