CREATE TABLE if not exists sandwich(sandID integer not null, Name varchar(25) not null, WaitTime integer not null, Price float not null, Primary Key (sandID));

SELECT * FROM sandwich;

INSERT INTO sandwich (sandId, Name, WaitTime, Price) values (1, 'Baker Bacon', 7, 6.89), (2, 'BBQ Chicken', 7, 6.89), (3, 'BLT', 7, 4.89);