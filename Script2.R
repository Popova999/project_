trade1 <- read.csv2("C:/Users/Admin/Desktop/tasks R/trade1.csv", row.names=1) #��������� ������
dinamika1 <- ts(trade1) # ����������� ������ �� ��������� ���
str(dinamika1) #�������� ��������������
(acf(dinamika1, main=""))#�������� ������� ������������� � ������,  ������ �������������� ��� �������� ���������
plot(stl((ts(dinamika1[,1],frequency=8)),s.window="periodic", robust=TRUE))
  
     