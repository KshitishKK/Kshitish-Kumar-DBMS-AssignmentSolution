create database TravelOnTheGo;
use TravelOnTheGo;
create table PASSENGER(Passenger_name varchar(50), Category varchar(50),
 Gender varchar(50),
 Boarding_City varchar(50),
 Destination_City varchar(50),
 Distance int,
 Bus_Type varchar(50));
create table PRICE(Bus_Type varchar(50),
 Distance int,
 Price int);
 insert into PASSENGER values('Sejal','AC','F','Bengaluru','Chennai',350,'Sleeper');
insert into PASSENGER values('Anmol','Non-AC','M','Mumbai','Hyderabad',700,'Sitting');
insert into PASSENGER values('Pallavi','AC','F','Panaji','Bengaluru',600,'Sleeper');
insert into PASSENGER values('Khusboo','AC','F','Chennai','Mumbai',1500,'Sleeper');
insert into PASSENGER values('Udit','Non-AC','M','Trivandrum','panaji',1000,'Sleeper');
insert into PASSENGER values('Ankur','AC','M','Nagpur','Hyderabad',500,'Sitting');
insert into PASSENGER values('Hemant','Non-AC','M','panaji','Mumbai',700,'Sleeper');
insert into PASSENGER values('Manish','Non-AC','M','Hyderabad','Bengaluru',500,'Sitting');
insert into PASSENGER values('Piyush','AC','M','Pune','Nagpur',700,'Sitting');

insert into PRICE values('Sleeper',350,770);
insert into PRICE values('Sleeper',500,1100);
insert into PRICE values('Sleeper',600,1320);
insert into PRICE values('Sleeper',700,1540);
insert into PRICE values('Sleeper',1000,2200);
insert into PRICE values('Sleeper',1200,2640);
insert into PRICE values('Sleeper',1500,2700);
insert into PRICE values('Sitting',500,620);
insert into PRICE values('Sitting',600,744);
insert into PRICE values('Sitting',700,868);
insert into PRICE values('Sitting',1000,1240);
insert into PRICE values('Sitting',1200,1488);
insert into PRICE values('Sitting',1500,1860);

select * from PASSENGER;
select * from PRICE;

SELECT COUNT(CASE WHEN (Gender) = 'F' THEN 1 END) Female FROM PASSENGER WHERE Distance >=600;
SELECT COUNT(CASE WHEN (Gender) = 'M' THEN 1 END) Male FROM PASSENGER WHERE Distance >=600;

SELECT MIN(PRICE) FROM PRICE WHERE Bus_Type = 'Sleeper';

SELECT * FROM PASSENGER WHERE Passenger_name LIKE 'S%';

SELECT p1.Passenger_name, p1.Boarding_city, p1.Destination_city, p1.Bus_type, p2.Price FROM PASSENGER p1, PRICE p2 WHERE p1.Distance = 1000 and p1.Bus_type = 'Sitting' and p1.Distance = 1000 and p1.Bus_type = 'Sitting';

SELECT DISTINCT p1.Passenger_name, p1.Boarding_city as Destination_city, p1.Destination_city as Boardng_city, p1.Bus_type, p2.Price FROM passenger p1, price p2 WHERE Passenger_name = 'Pallavi' and p1.Distance = p2.Distance;

SELECT DISTINCT distance FROM passenger ORDER BY Distance desc;

SELECT Passenger_name, Distance * 100.0/ (SELECT SUM(Distance) FROM passenger)FROM passenger GROUP BY Distance;

Select Distance.PRICE,Price.PRICE, case when Price.PRICE > 1000 then 'Expensive' when Price.PRICE < 1000 && Price.PRICE >500 then 'Average Cost' else 'Cheap' end as Cost;
