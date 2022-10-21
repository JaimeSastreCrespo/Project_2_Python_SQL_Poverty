-- create database Proj_Poverty;
-- use Proj_Poverty;

-- Here we have uploaded 4 databases
-- After, we have modified 4 Average colum names to unique ones

-- ALTER TABLE gdp_data
-- RENAME COLUMN Average TO Average_GDP;

-- ALTER TABLE health_data
-- RENAME COLUMN Average TO Average_health;

-- ALTER TABLE unemploy_data
-- RENAME COLUMN Average TO Average_unemploy;

-- ALTER TABLE violence
-- RENAME COLUMN Average TO Average_violence;

-- TO DO
-- create empty table for internal poverty index (using join on our 4 tables) = 1 result for each country
-- create table with exteranal poverty index (upload from internet after modification)
-- create join table for both results to be compared :) FINITO PEPITO

-- INSERT INTO internal_poverty(Country)
-- select Average_GDP from gdp_data;

-- as (select Average_GDP from gdp_data),
-- as (select Average_health from health_data),
-- as (select Average_unemploy from unemploy_data),
-- as (select Average_violence from violence);

select gd.Country, gd.Average_GDP, hd.Average_health, ud.Average_unemploy, vd.Average_violence
from gdp_data gd
left join health_data hd
on gd.Country = hd.Country
left join unemploy_data ud
on hd.Country = ud.Country
left join violence vd
on ud.Country = vd.Country;



