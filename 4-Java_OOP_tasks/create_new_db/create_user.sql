SHOW DATABASES;
SELECT user FROM mysql.user;
CREATE USER "animal_guru_111"@"localhost" IDENTIFIED BY "secretword_554326";
SELECT user FROM mysql.user;
GRANT ALL ON `animal_house`.* TO "animal_guru_111"@"localhost";
-- FLUSH PRIVILEGES;
SHOW GRANTS FOR "animal_guru_111"@"localhost";
