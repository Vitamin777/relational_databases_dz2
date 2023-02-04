# �������� ������� ������ sys_temp. ������� � 1.2 
CREATE USER 'sys_temp'@'%' IDENTIFIED BY 'secret';
FLUSH PRIVILEGES;
# ������� ������ ������������� � ���� ������. ������� � 1.3 
SELECT user FROM mysql.user;
# ����� ��� ����� ��� ������������ sys_temp. ������� � 1.4 
GRANT ALL PRIVILEGES ON *.* TO 'sys_temp'@'%' WITH GRANT OPTION;
FLUSH PRIVILEGES;
# ��������� ������ �� ��������� ������ ���� ��� ������������ sys_temp. ������� � 1.5
SHOW GRANTS FOR 'sys_temp'@'%';

# ���������������� � ���� ������ �� ����� sys_temp. ������� � 1.6
ALTER USER 'sys_temp'@'%' IDENTIFIED WITH mysql_native_password BY 'secret';

#������� � ������������ sys_temp ����� �� ��������, ��������� � �������� ������ �� ���� sakila.������� � 3*.1
