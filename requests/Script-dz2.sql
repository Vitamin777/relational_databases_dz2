# Создайть учётную запись sys_temp. Задание № 1.2 
CREATE USER 'sys_temp'@'%' IDENTIFIED BY 'secret';
FLUSH PRIVILEGES;
# Вывести список пользователей в базе данных. Задание № 1.3 
SELECT user FROM mysql.user;
# Дайть все права для пользователя sys_temp. Задание № 1.4 
GRANT ALL PRIVILEGES ON *.* TO 'sys_temp'@'%' WITH GRANT OPTION;
FLUSH PRIVILEGES;
# Выполнить запрос на получение списка прав для пользователя sys_temp. Задание № 1.5
SHOW GRANTS FOR 'sys_temp'@'%';

# Переподключитесь к базе данных от имени sys_temp. Задание № 1.6
ALTER USER 'sys_temp'@'%' IDENTIFIED WITH mysql_native_password BY 'secret';

#Уберите у пользователя sys_temp права на внесение, изменение и удаление данных из базы sakila.Задание № 3*.1
