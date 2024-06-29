-- DROP TABLE pack_animals;
CREATE TABLE pack_animals LIKE camels;
ALTER TABLE pack_animals
ADD COLUMN animal_kind VARCHAR(30) NOT NULL AFTER animal_name;
INSERT INTO pack_animals (animal_name, animal_kind, birth_date, commands)
(SELECT animal_name, 'camel' AS animal_kind, birth_date, commands FROM camels
UNION
SELECT animal_name, 'horse' AS animal_kind, birth_date, commands FROM horses
UNION
SELECT animal_name, 'donkey' AS animal_kind, birth_date, commands FROM donkeys);

-- DROP TABLE pet_animals;
CREATE TABLE pet_animals LIKE dogs;
ALTER TABLE pet_animals
ADD COLUMN animal_kind VARCHAR(30) NOT NULL AFTER animal_name;
INSERT INTO pet_animals (animal_name, animal_kind, birth_date, commands)
(SELECT animal_name, 'cat' AS animal_kind, birth_date, commands FROM cats
UNION 
SELECT animal_name, 'dog' AS animal_kind, birth_date, commands FROM dogs 
UNION
SELECT animal_name, 'hamster' AS animal_kind, birth_date, commands FROM hamsters);
