#!/bin/bash
file_result=task7_8_9.sql;
for table_name in $(ls *txt | grep -o -e "^[A-Za-z]*"); do 
    echo -e "CREATE TABLE $table_name (\n\tid SERIAL PRIMARY KEY,\n\tanimal_name VARCHAR(30) NOT NULL,\n\tbirth_date DATE DEFAULT (CURRENT_DATE),\n\tcommands TEXT\n\t);\n" >> $file_result; 
    echo -e "INSERT INTO $table_name (animal_name, birth_date, commands)\nVALUES" >> $file_result; 
    echo -e "$(cat $table_name.txt);\n\n" >> $file_result; 
done;
exit
