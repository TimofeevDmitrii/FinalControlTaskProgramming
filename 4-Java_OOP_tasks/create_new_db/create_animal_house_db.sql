-- DROP DATABASE animal_house;
CREATE DATABASE animal_house;
USE animal_house;
    
  
-- DROP TABLE animal_kinds;  
CREATE TABLE animal_kinds (
	id SERIAL PRIMARY KEY,
    animal_kind VARCHAR(40) NOT NULL UNIQUE,
    animal_type VARCHAR(40) DEFAULT "not specified" -- если вдруг пока что тип животного для данного вида не определен
    );


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


-- DROP TABLE animals_specification;
CREATE TABLE animals_specification(
	id SERIAL PRIMARY KEY,
    animal_id BIGINT UNSIGNED UNIQUE NOT NULL,
    passport_data VARCHAR(100),
    weight_kg DECIMAL(6,3) UNSIGNED,
    commands TEXT,
    FOREIGN KEY (animal_id) REFERENCES animals(id) ON UPDATE CASCADE ON DELETE CASCADE
    );
