-- 1 selection tous les données d'une table  
SELECT*FROM category;

-- 2 selection de données spécifiques d'une table
SELECT firstname FROM custommer;

-- 3  selection avec tri et limitation de resultat
SELECT name ,stock FROM product ORDER BY stock DESC LIMIT 3;

-- 4 recherche avec une condition
SELECT * FROM custommer WHERE lastname LIKE 'J%';

-- 5 utilisation de fonction d'agrégation(somme, moyenne ,comptage)
SELECT AVG(price) FROM product WHERE category_id = 2;
-- 6  jointure de deux tables
SELECT p.name, p.description,p.price , p.stock,c.name as categories FROM product p 
JOIN category c  WHERE p.category_id = c.id;
-- 7  groupement de donnée avec agrégation
SELECT category_id,COUNT(*) FROM product GROUP BY category_id;
-- 8  mise a jour de donnée dans ue table
UPDATE category SET name ='clothes' WHERE id = 2;
-- 9  insertion de nouvelles données dans une table 
INSERT INTO category(name) VALUES
('home'),('game'),('internet');
-- 10 supression de donnée dans une table
DELETE FROM category WHERE id>=7;