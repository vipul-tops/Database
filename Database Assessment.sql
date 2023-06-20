show databases;
create database assess;
use assess;
create table city(id int, city_name varchar(20), lat double, longs double, country_id int);
desc city;
insert into city value( 1, 'Berlin', 52.520008, 13.404954, 1);
insert into city value( 2, 'Belgrade', 44.787197, 20.457273, 2);
insert into city value( 3, 'Zagrab', 45.815399, 15.966568, 3);
insert into city value( 4, 'New York', 40.730610, -73.935242, 4);
insert into city value( 5, 'Los Angeles', 34.052235, -118.243683, 4);
insert into city value( 6, 'Warsaw', 52.237049, 21.017532, 5);

select * from city;

create table customer(id int, customer_name varchar(30), city_id int, customer_address varchar(30), next_call_date date, ts_inserted datetime);
alter table customer modify ts_inserted varchar(30);
alter table customer modify next_call_date varchar(30);
insert into customer value( 1, 'Jewelry store', 4, 'Long Stret 120', '2020-01-21', '2020-01-09 14:01:2000');
desc customer;
insert into customer value( 2, 'Bakery', 1, 'Kurfurstendamm 25', '2020-02-21', '2020-01-09 17:52:15.000');
insert into customer value( 3, 'Cafe', 1, 'TauentzienstraBe 44', '2020-01-21', '2020-01-09 08:02:49.000');
insert into customer value( 4, 'Restaurant', 3, 'Ulica lipa 15', '2020-01-21', '2020-01-10 09:20:21.000');
select * from customer;

create table country(id int, country_name varchar(20), country_name_eng varchar(20), country_code varchar(20));
insert into country value( 1, 'Deutschland', 'Germany', 'DEU');
insert into country value( 2, 'Sarbija', 'Serbia', 'SRB');
insert into country value( 3, 'Hrvatska', 'Crotia', 'HRV');
insert into country value( 4, 'United State America', 'United State America', 'USA');
insert into country value( 5, 'Polska', 'Poland', 'POL');
insert into country value( 6, 'Espana', 'Spain', 'ESP');
insert into country value( 7, 'Rossiya', 'Russia', 'RUS');

select * from country;

select *from customer left join country 
on customer.id = country.id;

SELECT *FROM city left join country ON city.id = country.id;

select country.id, country.country_name_eng, city.city_name, customer.customer_name
from country 
left join city 
on country.id = city.country_id
left join customer
on city.id = customer.city_id;


