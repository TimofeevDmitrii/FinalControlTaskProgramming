-- DROP DATABASE human_friends;
CREATE DATABASE human_friends;
USE human_friends;

CREATE TABLE camels (
	id SERIAL PRIMARY KEY,
	animal_name VARCHAR(30) NOT NULL,
	birth_date DATE DEFAULT (CURRENT_DATE),
	commands TEXT
	);

INSERT INTO camels (animal_name, birth_date, commands)
VALUES
("Sand Bump", "2022-12-22", "Лежать; Подъем; Бежать галопом; Стой"),
("Bongo", "2020-01-02", "Лежать; Подъем; Бежать галопом; Стой"),
("Han", "2021-09-24", "Лежать; Подъем; Бежать галопом; Стой"),
("Dona", "2020-01-08", "Лежать; Подъем; Бежать галопом; Стой");


CREATE TABLE cats (
	id SERIAL PRIMARY KEY,
	animal_name VARCHAR(30) NOT NULL,
	birth_date DATE DEFAULT (CURRENT_DATE),
	commands TEXT
	);

INSERT INTO cats (animal_name, birth_date, commands)
VALUES
("Chloe", "2021-08-04", "Дай лапу; Сидеть; Скажи мяу; Крутиться"),
("Jany", "2017-07-10", "Дай лапу; Сидеть; Прыжок вверх; Скажи мяу"),
("Tom", "2023-10-09", "Потянуться; Скажи мяу; Ползти");


CREATE TABLE dogs (
	id SERIAL PRIMARY KEY,
	animal_name VARCHAR(30) NOT NULL,
	birth_date DATE DEFAULT (CURRENT_DATE),
	commands TEXT
	);

INSERT INTO dogs (animal_name, birth_date, commands)
VALUES
("Mike", "2019-09-11", "Дай лапу; Сидеть; Лежать"),
("Rufus (Rufy)", "2022-09-11", "Дай лапу; Сидеть; Лежать");


CREATE TABLE donkeys (
	id SERIAL PRIMARY KEY,
	animal_name VARCHAR(30) NOT NULL,
	birth_date DATE DEFAULT (CURRENT_DATE),
	commands TEXT
	);

INSERT INTO donkeys (animal_name, birth_date, commands)
VALUES
("Bobby", "2018-04-12", "Нести груз; Бить копытом; Качать головой"),
("Jimbo", "2020-04-23", "Нести груз; Бить копытом; Качать головой; Реветь");


CREATE TABLE hamsters (
	id SERIAL PRIMARY KEY,
	animal_name VARCHAR(30) NOT NULL,
	birth_date DATE DEFAULT (CURRENT_DATE),
	commands TEXT
	);

INSERT INTO hamsters (animal_name, birth_date, commands)
VALUES
("Sonya", "2024-03-11", "Прыжок; Обнимашки; Крутиться"),
("Snawball", "2024-02-05", "Прыжок; Обнимашки; Крутиться; Скручиваться"),
("Penut", "2023-08-09", "Прыжок; Обнимашки; Умываться"),
("Eggy", "2023-08-09", "Прыжок; Обнимашки; Умываться");


CREATE TABLE horses (
	id SERIAL PRIMARY KEY,
	animal_name VARCHAR(30) NOT NULL,
	birth_date DATE DEFAULT (CURRENT_DATE),
	commands TEXT
	);

INSERT INTO horses (animal_name, birth_date, commands)
VALUES
("June", "2023-05-18", ""),
("May Flower", "2021-12-25", "Рысью; Галопом; Барьер"),
("Thunder", "2019-03-27", "Рысью; Галопом; Барьер; Стрела");


