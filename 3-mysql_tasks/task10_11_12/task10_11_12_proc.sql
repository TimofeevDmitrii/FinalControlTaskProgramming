DROP PROCEDURE IF EXISTS find_young_animals;
DELIMITER //
CREATE PROCEDURE find_young_animals() 
BEGIN
	SELECT 
		animal_name,
		animal_kind,
		birth_date,
		age_months
	FROM 
	(SELECT animal_name, animal_kind, birth_date, TIMESTAMPDIFF(month, birth_date, CURDATE()) AS age_months FROM pack_animals AS packs
	UNION
	SELECT animal_name, animal_kind, birth_date, TIMESTAMPDIFF(month, birth_date, CURDATE()) AS age_months FROM pet_animals AS pets) AS res
	WHERE age_months > 12 AND age_months < 36
	ORDER BY age_months;
END//
DELIMITER ;
-- CALL find_young_animals();


DROP PROCEDURE IF EXISTS find_young_animals_manual;
DELIMITER &&
CREATE PROCEDURE find_young_animals_manual()
BEGIN
	SELECT 
		animal_name,
		animal_kind,
		birth_date,
		age_months
	FROM 
	(SELECT animal_name, animal_kind, birth_date, FLOOR(DATEDIFF(CURDATE(), birth_date)/30.4375) AS age_months FROM pack_animals AS packs
	UNION
	SELECT animal_name, animal_kind, birth_date, FLOOR(DATEDIFF(CURDATE(), birth_date)/30.4375) AS age_months FROM pet_animals AS pets) AS res 
	WHERE age_months > 12 AND age_months < 36
	ORDER BY age_months;
END&&
DELIMITER ;
-- CALL find_young_animals_manual();
