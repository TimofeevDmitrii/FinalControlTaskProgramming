-- DELETE FROM pack_animals WHERE animal_kind = "camel";
-- TRUNCATE TABLE camels;

CREATE TABLE all_animals LIKE pet_animals;
ALTER TABLE all_animals
ADD COLUMN animal_type VARCHAR(30) NOT NULL AFTER animal_name;
INSERT INTO all_animals (animal_name,animal_type, animal_kind, birth_date, commands)
(SELECT animal_name, 'pack_animal' AS animal_type, animal_kind, birth_date, commands FROM pack_animals AS packs
UNION
SELECT animal_name, 'pet_animal' AS animal_type, animal_kind, birth_date, commands FROM pet_animals AS pets);
