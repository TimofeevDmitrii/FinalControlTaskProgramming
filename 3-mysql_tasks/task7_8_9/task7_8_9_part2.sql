-- Варианты создания даблицы через SELECT (нужно заново прописывать многие ограничения)
-- DROP TABLE pack_animals;
CREATE TABLE pack_animals 
SELECT
	animal_name,
    animal_kind,
	birth_date,
	commands
FROM 
(SELECT 'camel' AS animal_kind, animal_name, birth_date, commands FROM camels AS c
UNION 
SELECT 'horse' AS animal_kind, animal_name, birth_date, commands FROM horses AS h
UNION
SELECT 'donkey' AS animal_kind, animal_name, birth_date, commands FROM donkeys AS d) AS res;
ALTER TABLE pack_animals 
ADD COLUMN id SERIAL PRIMARY KEY FIRST,
MODIFY COLUMN animal_kind VARCHAR(30) NOT NULL,
ALTER COLUMN birth_date SET DEFAULT (CURRENT_DATE);


-- DROP TABLE pet_animals;
CREATE TABLE pet_animals
SELECT 
	animal_name,
    animal_kind,
	birth_date,
	commands
FROM
(SELECT 'cat' AS animal_kind, animal_name, birth_date, commands FROM cats AS c
UNION 
SELECT 'dog' AS animal_kind, animal_name, birth_date, commands FROM dogs AS d
UNION
SELECT 'hamster' AS animal_kind, animal_name, birth_date, commands FROM hamsters AS h) AS res;
ALTER TABLE pet_animals 
ADD COLUMN id SERIAL PRIMARY KEY FIRST,
MODIFY COLUMN animal_kind VARCHAR(30) NOT NULL,
ALTER COLUMN birth_date SET DEFAULT (CURRENT_DATE);
