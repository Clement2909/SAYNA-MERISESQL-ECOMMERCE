INSERT INTO role(name) VALUES
('admin'),('custommer');

INSERT INTO user(name,password,role_id) VALUES
('John','John123;',2),('Jane','Jane123;',2),('Alice','Alice123;',2),('Bob','Bob123;',2),('Eva','Eva123;',2),
('Kwesi','Kwesi',2),('Isabel','Isabel',2),('Idriss','Idriss',2),('Marc','Marc',2),('Ntsay','Ntsay',2),
('Jean','Jean',2),('Andry','Andry',2),('Hery','Hery',2),('Didier','Didier',2),('Kwane','Kwane',2),
('Nelson','Nelson',2),('Haile','Haile',2),('Wangari','Wangari',2),('Leopold','Leopold',2),('Clement','Clement',2),
('Victorin','Victorin',1),('Marie','Marie',1);

INSERT INTO ADMIN(name, user_id) VALUES 
('Victorin',21),('Marie',22);

INSERT INTO custommer(firstname,lastname,city,street,email,phone,zip_code,country,user_id)VALUES
		('John', 'Doe', 'New York', '123 Main St', 'john.doe@example.com', '123-456-7890', '10001', 'USA',1),
    ('Jane', 'Smith', 'Los Angeles', '456 Elm St', 'jane.smith@example.com', '987-654-3210', '90001', 'USA',2),
    ('Alice', 'Johnson', 'Chicago', '789 Oak St', 'alice.johnson@example.com', '555-555-5555', '60601', 'USA',3),
    ('Bob', 'Williams', 'Houston', '567 Pine St', 'bob.williams@example.com', '111-222-3333', '77001', 'USA',4),
    ('Eva', 'Martin', 'Miami', '234 Beach Rd', 'eva.martin@example.com', '777-888-9999', '33101', 'USA',5),
    ('Kwesi', 'Amissah-Arthur', 'Cape Coast', 'Pedu Rd', 'kwesi.arthur@example.com', '233-244-567890', '00233', 'Ghana',6),
    ('Isabel', 'Dos Santos', 'Luanda', 'Miramar', 'isabel.dos.santos@example.com', '244-926-123456', '1000', 'Angola',7),
    ('Idriss', 'Déby', 'NDjamena', 'Presidential Palace', 'idriss.deby@example.com', '235-662-111222', '01 BP 109', 'Chad',8),
    ('Marc', 'Ravalomanana', 'Antananarivo', 'Iavoloha', 'marc.ravalomanana@example.com', '261-20-1234567', '101', 'Madagascar',9),
    ('Ntsay', 'Christian', 'Antananarivo', 'Ambohitsorohitra', 'christian.ntsay@example.com', '261-20-9876543', '101', 'Madagascar',10),
    ('Jean', 'Rajaonarimampianina', 'Antananarivo', 'Iavoloha', 'jean.rajaonarimampianina@example.com', '261-20-5555555', '101', 'Madagascar',11),
    ('Andry', 'Rajoelina', 'Antananarivo', 'Ambohitsorohitra', 'andry.rajoelina@example.com', '261-20-7777777', '101', 'Madagascar',12),
    ('Hery', 'Rajaonarimampianina', 'Antananarivo', 'Iavoloha', 'hery.rajaonarimampianina@example.com', '261-20-8888888', '101', 'Madagascar',13),
    ('Didier', 'Ratsiraka', 'Toamasina', 'Toamasina I', 'didier.ratsiraka@example.com', '261-53-1234567', '501', 'Madagascar',14),
    ('Kwame', 'Nkrumah', 'Accra', '1 Independence Ave', 'kwame.nkrumah@example.com', '233-244-123456', 'GA1', 'Ghana',15),
    ('Nelson', 'Mandela', 'Johannesburg', '46664 Vilakazi St', 'nelson.mandela@example.com', '27-123-456789', '2000', 'South Africa',16),
    ('Haile', 'Selassie', 'Addis Ababa', 'Imperial Palace', 'haile.selassie@example.com', '251-911-987654', '1000', 'Ethiopia',17),
    ('Wangari', 'Maathai', 'Nairobi', 'Karura Forest', 'wangari.maathai@example.com', '254-722-555555', '00100', 'Kenya',18),
    ('Léopold', 'Sédar Senghor', 'Dakar', 'Avenue Léopold Sédar Senghor', 'leopold.senghor@example.com', '221-777-111222', 'BP 98', 'Senegal',19),
		('Clement','Randria','Ambohijanaka','Avenue Lord','clement@gmail.com','225-757-111222','BP 100','Madagascar',20);	


INSERT INTO statu(name) VALUES
('pending'),('in_progress'),('shipped'),('delivered'),('canceled');


INSERT INTO orders (ordered_at, delivered_at, amount, custommer_id,statu_id) VALUES
		('2023-08-01 10:00:00', '2023-08-02 15:00:00', 1450, 1,4),
    ('2023-08-02 11:30:00', '2023-08-03 14:45:00', 200, 2,4),
    ('2023-08-03 09:15:00', '2023-08-04 12:30:00', 50, 3,4),
    ('2023-08-04 13:00:00', '2023-08-05 16:15:00', 30320, 4,4),
    ('2023-08-05 14:30:00', '2023-08-06 18:30:00', 100, 5,4),
    ('2023-08-06 10:45:00', '2023-08-07 13:45:00', 725, 6,4),
    ('2023-08-07 12:00:00', '2023-08-08 15:15:00', 2240, 7,4),
    ('2023-08-08 08:15:00', '2023-08-09 11:30:00', 180, 8,4),
    ('2023-08-09 14:00:00', '2023-08-10 17:30:00', 9054, 9,4),
    ('2023-08-10 09:30:00', '2023-08-11 12:45:00', 120, 10,4),
    ('2023-08-11 11:45:00', '2023-08-12 14:30:00', 2350, 11,4),
    ('2023-08-12 13:30:00', '2023-08-13 16:15:00', 7450, 12,4),
    ('2023-08-13 15:00:00', '2023-08-14 18:30:00', 180, 13,4),
    ('2023-08-14 10:15:00', '2023-08-15 13:45:00', 160, 14,4),
    ('2023-08-15 12:30:00', '2023-08-16 15:15:00', 9540, 15,4),
    ('2023-08-16 08:45:00', '2023-08-17 11:30:00', 200, 16,4),
    ('2023-08-17 14:15:00', '2023-08-18 17:30:00', 1310, 17,4),
    ('2023-08-18 09:00:00', '2023-08-19 12:45:00', 130, 18,4),
    ('2023-08-19 10:45:00', '2023-08-20 13:30:00', 750, 19,4),
    ('2023-08-20 13:30:00', '2023-08-21 16:15:00', 2050, 20,4),
    ('2023-08-21 10:00:00', '2023-08-22 15:00:00', 130, 7,4),
    ('2023-08-22 11:30:00', '2023-08-23 14:45:00', 180, 8,4),
    ('2023-08-23 09:15:00', '2023-08-24 12:30:00', 90, 9,4),
    ('2023-08-24 13:00:00', '2023-08-25 16:15:00', 300, 10,4),
    ('2023-08-25 14:30:00', '2023-08-26 18:30:00', 120, 5,4),
    ('2023-08-26 10:45:00', '2023-08-27 13:45:00', 100, 8,4),
    ('2023-08-27 12:00:00', '2023-08-28 15:15:00', 220, 6,4),
    ('2023-08-28 08:15:00', '2023-08-29 11:30:00', 140, 6,4),
    ('2023-08-29 14:00:00', '2023-08-30 17:30:00', 160, 2,4),
    ('2023-08-30 09:30:00', '2023-08-31 12:45:00', 110, 20,4);


INSERT INTO category(name)  VALUES
('electronics'),('clothing'),('books'),('sport'),('toy');

INSERT INTO product(name, description, price, stock, category_id) 
VALUES 
('Smartphone', 'High-quality smartphone with advanced features', 599.99, 100, 1),
('Laptop', 'Powerful laptop for work and entertainment', 899.99, 50, 1),
('T-shirt', 'Comfortable cotton t-shirt for everyday wear', 19.99, 200, 2),
('Jeans', 'Stylish denim jeans for a casual look', 39.99, 100, 2),
('Novel', 'Bestselling novel by a renowned author', 12.99, 150, 3),
('Textbook', 'Educational textbook for students', 49.99, 80, 3),
('Football', 'Official size and weight football for matches', 29.99, 50, 4),
('Running Shoes', 'Lightweight and durable running shoes', 79.99, 120, 4),
('Action Figure', 'Popular action figure from a famous franchise', 14.99, 80, 5),
('Board Game', 'Engaging board game for family fun', 24.99, 100, 5);





