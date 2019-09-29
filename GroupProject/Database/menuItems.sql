CREATE TABLE if not exists users(Name varchar(32) not null, UserId varchar(15) not null, Password varchar(20) not null, PrevOrders varchar(25)); 

CREATE TABLE if not exists sandwich
(
	sandID integer not null, 
	Name varchar(25) not null, 
	Time integer not null, 
	Price float not null, 
	#Ingredients varchar array[10] not null,
	Bread varchar array[10] not null
);

CREATE TABLE if not exists pizza_calzone
(
	pizzaID integer not null, 
	Name varchar(25) not null, 
	Time integer not null, 
	Price float not null, 
	#Ingredients varchar array[10] not null
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
(1, 'Baker Bacon', 7, 6.89, 
	#['bacon', 'pepperjack', 'lettuce', 'tomato', 'balsamic vinaigrette'], 
	#['white', 'wheat', 'ciabatta', 'potato rose', 'wholegrain']), 
(2, 'BBQ Chicken', 7, 6.89, 
	#['chicken', 'bacon', 'mozzarella', 'bbq sauce', 'lettuce', 'tomato', 'onion'], 
	#['white', 'wheat', 'ciabatta', 'potato rose', 'wholegrain']), 
(3, 'BLT', 7, 4.89, 
	#['bacon', 'lettuce', 'tomato'], 
	#['white', 'wheat', 'ciabatta', 'potato rose', 'whole grain']), 
(4, 'Italian', 7, 6.89, 
	#['pepperoni', 'salami', 'ham', 'provolone', 'lettuce', 'tomato', 'onion', 'italian dressing', 'salt and pepper'], 
	#['white', 'wheat', 'ciabatta', 'potato rose', 'wholegrain']), 
(5, 'Darley Divine', 7, 6.89, 
	#['chicken', 'marinara', 'mozzarella', 'parmesan','spinach','tomato'], 
	#['white', 'wheat', 'ciabatta', 'potato rose', 'whole grain']), 
(6, 'Farrand Fodder', 7, 6.89, 
	#['basil pesto', 'mozzarella', 'spinach', 'cucumber', 'tomato', 'hummus'], 
	['white', 'wheat', 'ciabatta', 'potato rose', 'wholegrain']), 
(7, 'Hallet Ham', 7, 6.89, 
	#['ham', 'cheddar', 'lettuce', 'tomato'], 
	['white', 'wheat', 'ciabatta', 'potato rose', 'whole grain']), 
(8, 'Libby Licous', 7, 6.89,
	#['fontina', 'mozzarella', 'parmesan'], 
	['white', 'wheat', 'ciabatta', 'potato rose', 'whole grain']), 
(9, 'Parmesan Grilled Cheese', 7, 5.89, 
	#['fontina', 'balsamic onions', 'tomato'], 
	['white', 'wheat', 'ciabatta', 'potato rose', 'whole grain']), 
(10, 'Tofu Mozzarella', 7, 5.89, 
	#['tofu', 'mozzarella', 'lettuce', 'tomato', 'balsamic onions'], 
	['white', 'wheat', 'ciabatta', 'potato rose', 'whole grain']), 
(11, 'Tuna Melt', 7, 5.89, 
	#['tuna salad', 'swiss', 'lettuce', 'tomato', 'onion'], 
	['white', 'wheat', 'ciabatta', 'potato rose', 'whole grain']), 
(12, 'Turkey Bacon Club', 7, 6.89, 
	#['turkey', 'bacon', 'provolone', 'lettuce', 'tomato', 'onion'],
	['white', 'wheat', 'ciabatta', 'potato rose', 'whole grain']), 
(13, 'Turkey Jalapeno Melt', 7, 6.89, 
	#['turkey', 'pepper jack', 'jalapeno', 'lettuce', 'tomato', 'onion'], 
	['white', 'wheat', 'ciabatta', 'potato rose', 'whole grain']), 
(14, 'Veggie Club', 7,  6.89, 
	#['spinach', 'bell peppers', 'mushrooms', 'cucumbers', 'lettuce', 'tomato','balsamic onions'], 
	['white', 'wheat', 'ciabatta', 'potato rose', 'wholegrain']);

INSERT INTO ingredients values
(1, 'Bacon'),
(1, 'Pepper Jack'),
(1, 'Lettuce'),
(1, 'Tomato'),
(1, 'Balasmic Vinaigrette'),
(1, 'Bread'),

(2, 'Chicken'),
(2, 'Bacon'),
(2, 'Mozzarella'),
(2, 'BBQ Sauce'),
(2, 'Lettuce'),
(2, 'Tomato'),
(2, 'Onion'),
(2, 'Bread'),

(3, 'Bacon'),
(3, 'Lettuce'),
(3, 'Tomato'),
(3, 'Bread'),

(4, 'Pepperoni'),
(4, 'Salami'),
(4, 'Ham'),
(4, 'Provolone'),
(4, 'Lettuce'),
(4, 'Tomato'),
(4, 'Onion'),
(4, 'Italian Dressing'),
(4, 'Salt and Pepper'),
(4, 'Bread'),

(5, 'Chicken'),
(5, 'Marinara'),
(5, 'Mozzarella'),
(5, 'Parmesan'),
(5, 'Spinach'),
(5, 'Tomato'),
(5, 'Bread'),

(6, 'Basil Pesto'),
(6, 'Mozzarella'),

(15, 'Mozzarella'),
(15, 'Red Sauce'),

(16, 'Mozzarella'),
(16, 'Red Sauce'),
(16, 'Pepperoni'),

(17, 'Mozzarella'),
(17, 'BBQ Sauce'),
(17, 'Chicken'),
(17, 'Bacon'),
(17, 'Onion'),

(18, 'Mozzarella'),
(18, 'Red Sauce'),
(18, 'Sausage'),
(18, 'Ham'),
(18, 'Pepperoni'),

(19, 'Mozzarella'),
(19, 'Red Sauce'),
(19, 'Pineapple'),
(19, 'Ham'),

(20, 'Mozzarella'),
(20, 'Red Sauce'),
(20, 'Tomato'),
(20, 'Basil'),
(20, 'Garlic'),

(21, 'Mozzarella'),
(21, 'Red Sauce'),
(21, 'Spinach'),
(21, 'Bell Peppers'),
(21, 'Mushrooms'),

(22, 'Tomato'),
(22, 'Red Sauce'),
(22, 'Garlic'),
(22, 'Black Olives'),
(22, 'Basil'),

(23, 'Mozzarella'),

(24, 'Mozzarella'),
(24, 'Pepperoni'),


INSERT into pizza_calzone values 
(15, 'Cheese Pizza', 20, 4.89) 
(16, 'Pepperoni Pizza', 20,5.49)
(17, 'BBQ Chicken Pizza',20,6.89)
(18, 'Meat Lovers Pizza',20,6.98)
(19, 'Hawaiian Pizza',20,6.89)
(20, 'Margherita Pizza',20,5.49)
(21, 'Vegetarian Pizza',20,5.49)
(22, 'Vegan Pizza',20,5.39)
(23, 'Cheese Calzone', 20, 5.89)
(24, 'Pepperoni Calzone', 20,6.49)
(25, 'BBQ Chicken Calzone',20,7.89)
(26, 'Meat Lovers Calzone',20,7.98)
(27, 'Hawaiian Calzone',20,7.89)
(28, 'Margherita Calzone',20,6.49)
(29, 'Vegetarian Calzone',20,6.49)
(30, 'Vegan Calzone',20,6.39);