CREATE TABLE if not exists users
(
	Name varchar(32) not null, 
	UserId varchar(15) not null, 
	Password varchar(20) not null, 
	PrevOrders varchar(25)
); 

CREATE TABLE if not exists sandwich
(
	sandID integer not null, 
	Name varchar(25) not null, 
	Time integer not null, 
	Price float not null, 
);

CREATE TABLE if not exists pizza_calzone
(
	pizzaID integer not null, 
	Name varchar(25) not null, 
	Time integer not null, 
	Price float not null, 
);

CREATE TABLE if not exists active_orders
(
	UserName varchar(32) not null, 
	Item varchar array[5] not null, 
	PickupTime integer not null
);

CREATE TABLE if not exists inventory
(
	ingredientId varchar(25) not null, 
	stockId BIT not null, 
	primary key(ingredientId)
);

CREATE TABLE if not exists ingredients
(
	foodID integer not null, 
	ingredient varchar(20) not null
);

INSERT into sandwich values 
	(1, 'Baker Bacon', 7, 6.89), 
	(2, 'BBQ Chicken', 7, 6.89), 
	(3, 'BLT', 7, 4.89), 
	(4, 'Italian', 7, 6.89), 
	(5, 'Darley Divine', 7, 6.89), 
	(6, 'Farrand Fodder', 7, 6.89), 
	(7, 'Hallet Ham', 7, 6.89), 
	(8, 'Libby Licous', 7, 6.89), 
	(9, 'Parmesan Grilled Cheese', 7, 5.89), 
	(10, 'Tofu Mozzarella', 7, 5.89), 
	(11, 'Tuna Melt', 7, 5.89), 
	(12, 'Turkey Bacon Club', 7, 6.89), 
	(13, 'Turkey Jalapeno Melt', 7, 6.89), 
	(14, 'Veggie Club', 7,  6.89)
;

INSERT INTO ingredients values
	(1, 'Bacon'), (1, 'Pepper Jack'), (1, 'Lettuce'), (1, 'Tomato'), (1, 'Balsamic Vinaigrette'), (1, 'Bread'),
	(2, 'Chicken'), (2, 'Bacon'), (2, 'Mozzarella'), (2, 'BBQ Sauce'), (2, 'Lettuce'), (2, 'Tomato'), (2, 'Onion'), (2, 'Bread'),
	(3, 'Bacon'), (3, 'Lettuce'), (3, 'Tomato'), (3, 'Bread'),
	(4, 'Pepperoni'), (4, 'Salami'), (4, 'Ham'), (4, 'Provolone'), (4, 'Lettuce'), (4, 'Tomato'), (4, 'Onion'), (4, 'Italian Dressing'), (4, 'Salt and Pepper'), (4, 'Bread'),
	(5, 'Chicken'), (5, 'Marinara'), (5, 'Mozzarella'), (5, 'Parmesan'), (5, 'Spinach'), (5, 'Tomato'), (5, 'Bread'),
	(6, 'Basil Pesto'), (6, 'Mozzarella'), (6, 'Spinach'), (6, 'Cucumber'), (6, 'Tomato'), (6, 'Hummus'), (6, 'Bread'),
	(7, 'Ham'), (7, 'Cheddar'), (7, 'Lettuce'), (7, 'Tomato'), (7, 'Bread'),
	(8, 'Fontina'), (8, 'Mozzarella'), (8, 'Parmesan'), (8, 'Bread'),
	(9, 'Fontina'), (9, 'Balasmic Onions'), (9, 'Tomato'), (9, 'Bread'),
	(10, 'Tofu'), (10, 'Mozzarella'), (10, 'Lettuce'), (10, 'Tomato'), (10, 'Balasmic Onions'), (10, 'Bread'),
	(11, 'Tuna Salad'), (11, 'Swiss'), (11, 'Lettuce'), (11, 'Tomato'), (11, 'Onion'), (11, 'Bread'),
	(12, 'Turkey'), (12, 'Bacon'), (12, 'Provolone'), (12, 'Lettuce'), (12, 'Tomato'), (12, 'Onion'), (12, 'Onion'), (12, 'Bread'),
	(13, 'Turkey'), (13, 'Pepper Jack'), (13, 'Jalapeno'), (13, 'Lettuce'), (13, 'Tomato'), (13, 'Onion'), (13, 'Bread'),
	(14, 'Spinach'), (14, 'Bell Peppers'), (14, 'Mushrooms'), (14, 'Cucumbers'), (14, 'Lettuce'), (14, 'Tomato'), (14, 'Balsamic Onions'), (14, 'Bread'),

	(25, 'Mozzarella'), (25, 'BBQ Sauce Side'), (25, 'Chicken'), (25, 'Bacon'), (25, 'Onion'),
	(26, 'Mozzarella'), (26, 'Sausage'), (26, 'Ham'), (26, 'Pepperoni'), (26, 'Red Sauce'),
	(27, 'Mozzarella'), (27, 'Pineapple'), (27, 'Ham'),
	(28, 'Mozzarella'), (28, 'Tomato'), (28, 'Basil'), (28, 'Garlic'), 
	(29, 'Mozzarella'), (29, 'Spinach'), (29, 'Bell Peppers'), (29, 'Mushrooms'), 
	(30, 'Tomato'), (30, 'Garlic'), (30, 'Black Olives'), (30, 'Basil')
;


INSERT into inventory values 
	('Ciabatta', 1), 
	('Bacon', 1), ('Chicken', 1), ('Ham', 1), ('Salami', 1), ('Pepperoni', 1), ('Sausage', 1),('Turkey',1), 
	('Cheddar', 1), ('Mozzarella', 1), ('Provolone', 1), ('Pepper Jack', 1), ('Fontina', 1), ('Swiss', 1), ('Parmesan', 1), 
	('Lettuce', 1), ('Tomato', 1), ('Spinach', 1), ('Onion',1),('Mushrooms',1),('Bell Peppers',1), ('Banana Peppers',1), ('Cucumbers',1), 
	('Balsamic Onions', 1),('Black Olives',1),('Jalapenos',1),('Pineapple', 1), ('BBQ Sauce', 1), ('Red Sauce', 1), ('Hummus', 1), ('Garlic', 1), ('Basil', 1)
;