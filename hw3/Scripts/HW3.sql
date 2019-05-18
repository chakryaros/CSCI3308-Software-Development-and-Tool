#!/bin/sh
/*Chakrya Ros -- partner Muntaha Pasha*/

/*1*/
select firstname,lastname from employees where country != 'USA' and hireDate <= '2013-11-07' order by firstname,lastname;

/*2*/
select productid, productname, unitsinstock, unitprice FROM products WHERE unitsinstock > 0 and unitsinstock < reorderlevel;

/*3*/
select productname, unitprice from products where unitprice in (select Max(unitprice) from products) or unitprice in (select MIN(unitprice) from products) ORDER BY unitprice DESC;

/*4*/
select productid, productname, (unitsinstock*unitprice) AS "Total Inventory Value" from products WHERE (unitsinstock* unitprice) > 1000 ORDER BY (unitsinstock*unitprice) DESC;

/*5*/
select shipcountry, count(orderid) from orders where shipcountry !='Germany' and shippeddate >='2013-10-01' and shippeddate <= '2013-10-31' group by shipcountry order by shipcountry desc;

/*6*/
select customerid,shipname from orders group by customerid,shipname having count(customerid)>=10;

/*7*/
select supplierid, sum(unitprice*unitsinstock) as valueofinventory from products group by supplierid having count(*)>=5;

/*8*/
select suppliers.companyname,products.productname,products.unitprice from suppliers join products on suppliers.supplierid=products.supplierid where country='USA' or country='Germany' order by products.unitprice desc;

/*9*/
select e.lastname, e.firstname, e.title, e.extension, count(O.employeeid) from employees e join orders O on O.employeeid=e.employeeid group by e.employeeid having count(O.employeeid)>50 order by e.lastname desc, e.firstname, e.title, e.extension;

/*10*/
select customers.customerid,customers.companyname from customers left join orders on customers.customerid=orders.customerid where orders.customerid is null;

/*11*/
select S.CompanyName, S.ContactName, C.CategoryName, C.Description, P.ProductName, P.UnitsOnOrder FROM Products P JOIN Suppliers S ON S.SupplierID = P.SupplierID JOIN Categories C ON C.CategoryID = P.CategoryID WHERE P.UnitsInStock = 0;

/*12*/
select products.productname,suppliers.companyname,suppliers.country,products.unitsinstock from products join suppliers on products.supplierid=suppliers.supplierid where quantityperunit like '%bottles%' or quantityperunit like '%bags%';

/*13*/
CREATE TABLE Top_Items ( ItemID INT NOT NULL, ItemCode INT NOT NULL, ItemName VARCHAR(40) NOT NULL, InventoryDate DATE NOT NULL, SupplierID INT NOT NULL, ItemQuantity INT NOT NULL, ItemPrice DECIMAL(9 , 2 ) NOT NULL, PRIMARY KEY (ItemID));

/*14*/
INSERT into Top_Items(ItemID, ItemCode, ItemName, InventoryDate, ItemQuantity,ItemPrice, SupplierID) select ProductID, CategoryID, ProductName, current_date, UnitsInStock, UnitPrice, SupplierID from Products where Products.UnitsInStock*Products.UnitPrice > 1500;

/*15*/
DELETE Top_Items FROM Top_Items JOIN Suppliers ON Top_Items.SupplierID=Suppliers.SupplierID WHERE Suppliers.country = ‘Canada' or Suppliers.country = ‘USA’;

/*16*/
ALTER TABLE TOP_Items ADD InventoryValue decimal(9,2);

/*17*/
UPDATE Top_Items SET InventoryValue = ItemPrice*ItemQuantity;

/*18*/
DROP TABLE Top_Items;

