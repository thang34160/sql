a. SELECT * FROM article; 
b. SELECT ref, designation FROM `article` WHERE prix > 2; 
c. SELECT * FROM `article` WHERE prix <= 6.25 AND prix >= 2; 
d. SELECT * FROM `article` WHERE prix BETWEEN 2 AND 6.25; 
e. SELECT * FROM `article` WHERE id_fou = 1 AND prix NOT BETWEEN 2 AND 6.25 ORDER BY prix DESC; 
f. SELECT * FROM `article` WHERE id_fou = 1 OR id_fou = 3; 
g. SELECT * FROM `article` WHERE id_fou IN (1, 3);
h. SELECT * FROM `article` WHERE id_fou NOT IN (1, 3);
i. SELECT * FROM `bon` WHERE date_cmde BETWEEN '2019/02/01' AND '2019/04/30';
