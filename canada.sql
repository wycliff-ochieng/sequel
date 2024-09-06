create database Canada;

use canada;

create table province(
    province_id int,
    province_name varchar(100),
    official_language varchar(100)
);

create table capital_city(
    city_id int,
    city_name varchar(100),
    province_id int
)

create table tourist_attraction(
    attraction_id int,
    attraction_name varchar(100),
    attraction_city_id int,
    open_flag boolean
);

insert into country(province_id,province_name,official_language)
values('1', 'Alberta', 'English'),
      ('2','British Columbia', 'English'),
      ('3', 'Manitoba', 'English'),
      ('4', 'New Brunswick' 'English, French'),
      ('5', 'Newfoundland', 'English'),
      ('6','Nova','Scotia','English'),
      ('7','Ontario','English'),
      ('8', 'Prince Edward Island','English'),
      ('9', 'Quebec', 'French'),
      ('10','Saskatchewan','English');

insert into capital_city(city_id,city_name,province_id)
values('1','Toronto','7'),
      ('2 ','Quebec City', '9'),
      ('3','Halifax','5'),
      ('4','Fredericton','4'),
      ('5','Winnipeg','3'),
      ('6','Victoria','2'),
      ('7','Charlottetown','8'),
      ('8', 'Regina','10'),
      ('9','Edmonton', '1'),
      ('10', 'St. Johns', '5');

insert into tourist_attraction(attraction_id,attraction_name,attraction_city_id,open_flag)
values('1 ','CN ','Tower' ,'1' ,True),
      ('2','Old Quebec','2',True),
      ('3',,'Royal Ontario Museum''1', True),
      ('4', 'Place Royale', '2', True),
      ('5', 'Halifax Citadel', '3', True),
      ('6', 'Garrison District', '4', True),
      ('7','Confederation Centre of...','7', True),
      ('8', 'Stone Hall Castle', '8', True),
      ('9', 'West Edmonton Mall', '9', True),
      ('10','Signal Hill', '10',True),
      ('11','Canadian Museum for Human...', '5',True),
      ('12', 'Royal BC Museum', '6', True),
      ('13', 'Sunnyside Amusement Park', False);

--Write a query that performs an inner join between the three tables. Select the attraction_name column
--from the tourist_attraction table, the city_name column from the capital_city table, and the province_name
--column from the province table.
select ta.attraction_name, cc.city_name, p.province_name

from tourist_attraction ta

inner join capital_city cc

on cc.city_id = ta.attraction_city_id

inner join province p

on p.province_id = cc.province_id;

--Select rows from the attraction table only where the open_flag is set to true. Select rows from the
--province table only where the official_language is set to French.

select * from tourist_attraction
where open_flag is True;

select * from province
where official_language = 'French';

--Create a temporary table called open_tourist_attraction that selects the attraction_city_id and
--attraction_name columns from the tourist_attraction table where the open_flag value is true.

create temporary table open_tourist_attraction


