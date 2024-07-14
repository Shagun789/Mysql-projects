create schema cars;
use cars;
-- read data--
select * from car_dekho;
-- total cars: to get count of total records--
select count(*) from car_dekho;
-- Total car records are 7927 -- 
-- HOW MANY CARS WILL BE AVAILABLE IN 2023 --
select count(*) from car_dekho where year = 2023;
-- 6 cars are available in 2023 --
-- how many cars are avaliable in 2020,2021,2022 --
select count(*) from car_dekho where year = 2020;
-- 74 cars are avilable in 2020 -- 
select count(*) from car_dekho where year = 2021;
-- 7 cars are available in 2021 --
select count(*) from car_dekho where year = 2022;
-- 7 cars are avaliable in 2022--
select count(*) from car_dekho where year in (2020,2021,2022) group by year;
-- print the total of all cars by year--
select year, count(*) from car_dekho group by year;
-- how many diesal cars will be there in 2020--
select count(*) from car_dekho where year = 2020 and fuel = "Diesel"; #20 cars
-- how many petrol cars will be there in 2020--
select count(*) from car_dekho where year = 2020 and fuel = "Petrol"; #51
-- print all the fuel cars(petrol,diesal,CNG)--
select year, count(*) from car_dekho where fuel = "Petrol" group by year;
select year, count(*) from car_dekho where fuel = "Diesel" group by year;
select year, count(*) from car_dekho where fuel = "CNG" group by year;
-- which year has more than 100 cars available--
select year, count(*) from car_dekho group by year having count(*)>100;
select year, count(*) from car_dekho group by year having count(*)<50;
-- all cars count details from 2015-2023 we need complete list--
SELECT COUNT(*)
FROM car_dekho
WHERE year BETWEEN 2015 AND 2023; #4124
select * from car_dekho where year between 2015 and 2023;

-- END-- 


