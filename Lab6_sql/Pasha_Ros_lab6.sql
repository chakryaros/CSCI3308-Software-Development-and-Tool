# Chakrya Ros
# Muntaha Pasha


1. select * from store ORDER BY sname;

2. select * from store ORDER BY sname ASC LIMIT 3;

3. select * from store ORDER BY sname DESC LIMIT 3;

4. select sname from store WHERE price > 1;

5. select id,sname, (price*qty) from store ORDER BY price*qty;

6. select sum(qty*price) from store;

7. select * from course WHERE department_id = 1;

8. select * from course inner join department ON course.department_id = department.id where name = 'CSC';

9. select count(name) from department;

10. update course set department_id = 3 where cname = '112';

11. ALTER TABLE enrollment ADD drop_count TEXT;
	ALTER TABLE enrollment ALTER COLUMN drop_count TYPE varchar(40);
	ALTER TABLE enrollment ALTER COLUMN drop_count TYPE integer USING (drop_count::integer);

12. UPDATE enrollment SET drop_count = (count*2);

/*
 id | count | drop_count 
----+-------+------------
  1 |    40 |          8
  2 |    15 |          3
  3 |    10 |          2
  4 |    60 |         12
  5 |    14 |          3
  6 |   200 |         40
*/

13. select name || cname from course inner join department ON course.department_id = department.id where name = 'CSC' ORDER BY CNAME;
14. select course.id,course.cname,department.name,enrollment.count,enrollment.drop_count from course INNER JOIN department ON course.department_id = department.id INNER JOIN enrollment on course.id = enrollment.id;

 id | cname | name | count | drop_count 
----+-------+------+-------+------------
  1 | 111   | CSC  |    40 |          8
  2 | 112   | EGR  |    15 |          3
  3 | 250   | CSC  |    10 |          2
  4 | 231   | CSC  |    60 |         12
  5 | 111   | MTH  |    14 |          3
  6 | 250   | EGR  |   200 |         40

 15. ALTER TABLE enrollment DROP COLUMN drop_count;
     DELETE FROM enrollment;
     DROP TABLE enrollment;

     CREATE TABLE new_enrollment( id serial, department_name varchar(40) not null, count integer not null, drop_count integer, primary key (id));
     INSERT INTO new_enrollment (department_name,count,drop_count) values ('CSC', 100, 20), ('CHM', 120, 5), ('MTH', 90, 3), ('EGR', 122, 12), ('MTH', 68, 6), ('CSC', 100, 3), ('CHM', 30, 1);





