-- DROP DATABASE animal_house;
CREATE DATABASE animal_house;
USE animal_house;
    
  
-- DROP TABLE animal_kinds;  
CREATE TABLE animal_kinds (
	id SERIAL PRIMARY KEY,
    animal_kind VARCHAR(40) NOT NULL UNIQUE,
    animal_type VARCHAR(40)
    );

-- порядок будет произвольным при внесении новых видов в таблицу;
-- Для удобства восприятия пока что не будем моделировать эту ситуацию
INSERT INTO animal_kinds (animal_kind, animal_type)
VALUES
("camel", "pack animal"), ("donkey", "pack animal"), ("horse", "pack animal"), ("mule", "pack animal"), ("deer", "pack animal"),
("dog", "pet animal"), ("cat", "pet animal"), ("hamster", "pet animal"), ("mouse", "pet animal"), ("rabbit", "pet animal");

-- DROP TABLE animals;
CREATE TABLE animals (
	id SERIAL PRIMARY KEY,
    animal_name VARCHAR(40) NOT NULL,
    animal_kind_id BIGINT UNSIGNED,
    birth_date DATE DEFAULT (CURRENT_DATE) NOT NULL,
    gender ENUM("f","m") NOT NULL,
	breed VARCHAR(40),
    FOREIGN KEY (animal_kind_id) REFERENCES animal_kinds(id) ON UPDATE CASCADE ON DELETE SET NULL
    );


INSERT INTO animals (animal_name, animal_kind_id, birth_date, gender, breed)
VALUES
("Chloe", 7, "2021-08-04", "f", "Британская Вислоухая"),
("Jany", 7, "2017-07-10", "f", "Сиамская"),
("Mike", 6, "2019-09-11", "m", "Лабрадор-ретривер"),
("Tom", 7, "2023-10-09", "m", "Русская голубая"),
("Rufus (Rufy)", 6, "2022-09-11", "m", "Карликовый пинчер"),
("June", 3, "2023-05-18", "f", "Алтайская"),
("May Flower", 3, "2021-12-25", "f", "Алтайская"),
("Sand Bump", 1, "2022-12-22", "m", "Бактриан"),
("Bongo", 1, "2020-01-02", "m", "Дромадер"),
("Thunder", 3, "2019-03-27", "m", "Американский квортерхорс"),
("Sonya", 8, "2024-03-11", "f", "Сирийский"),
("Snawball", 8, "2024-02-05", "m", "Сирийский"),
("Bobby", 2, "2018-04-12", "m", "Карликовая средиземноморская"),
("Penut", 8, "2023-08-09", "m", "Сибирский"),
("Jimbo", 2, "2020-04-23", "m", "Каталонская"),
("Han", 1, "2021-09-24", "m", "Бактриан"),
("Dona", 1, "2020-01-08", "f", "Дромадер"),
("Garry", 10, "2023-03-13", "m", "Белгийский фландр"),
("Barry", 10, "2023-02-10", "m", "Белгийский фландр"),
("Fanny", 10, "2023-05-17", "f", "Белгийский фландр"),
("Forest", 5, "2022-06-01", "m", "Эвенская"),
("Larry", 10, "2022-11-11", "m", "Бабочка"),
("Lilly", 10, "2022-12-19", "f", "Бабочка"),
("Eggy", 8, "2023-08-09", "f", "Сибирский");


-- DROP TABLE animals_specification;
CREATE TABLE animals_specification(
	id SERIAL PRIMARY KEY,
    animal_id BIGINT UNSIGNED UNIQUE NOT NULL,
    passport_data VARCHAR(100),
    weight_kg DECIMAL(6,3) UNSIGNED,
    commands TEXT,
    FOREIGN KEY (animal_id) REFERENCES animals(id) ON UPDATE CASCADE ON DELETE CASCADE
    );

INSERT INTO animals_specification (animal_id, passport_data, weight_kg, commands)
VALUES
(1, "2210-094432; код подраз.: 210-432", 6.58, "Дай лапу; Сидеть; Скажи мяу; Крутиться"),
(2, "2245-784630; код подраз.: 366-112", 4.775, "Дай лапу; Сидеть; Прыжок вверх; Скажи мяу"),
(3, "221-0944-111", 29.5, "Дай лапу; Сидеть; Лежать"),
(4, "", 3.12, "Потянуться; Скажи мяу; Ползти"),
(5, "7789-0944-111221 КП: 438890", 5.38, "Дай лапу; Сидеть; Лежать"),
(6, "2215 095582032", 207.6, ""),
(7, "2217 095584377", 518.6, "Рысью; Галопом; Барьер"),
(8, "22 45 0953700", 309.34, "Лежать; Подъем; Бежать галопом; Стой"),
(9, "22 48 0133758", 587, "Лежать; Подъем; Бежать галопом; Стой"),
(10, "10 55 11758811", 528.8, "Рысью; Галопом; Барьер; Стрела"),
(11, "", 0.124, "Прыжок; Обнимашки; Крутиться"),
(12, "", 0.111, "Прыжок; Обнимашки; Крутиться; Скручиваться"),
(13, "106 833-282-413 КП: 807663", 105.95, "Нести груз; Бить копытом; Качать головой"),
(14, "", 0.058, "Прыжок; Обнимашки; Умываться"),
(15, "106 833-233-488 КП: 807663", 145, "Нести груз; Бить копытом; Качать головой; Реветь"),
(16, "22 45 4553738", 520.5, "Лежать; Подъем; Бежать галопом; Стой"),
(17, "22 48 8849021", 407.88, "Лежать; Подъем; Бежать галопом; Стой"),
(18, "", 7.76, "Опустить уши; Поднять уши"),
(19, "", 8.32, "Опустить уши; Поднять уши"),
(20, "", 7, "Опустить уши; Поднять уши"),
(21, "1703-4289-1001 КП: 1004392", 141, ""),
(22, "", 4.2, "Прыжок на руки"),
(23, "", 3.94, "Прыжок на руки"),
(24, "", 0.052, "Прыжок; Обнимашки; Умываться");

