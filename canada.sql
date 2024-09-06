create database Canada;

use canada;

create table country(
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
values('1 ','CN ','Tower' ,'1' true),
      ('2','Old Quebec','2','true'),
      ('3',,'Royal Ontario Museum''1', 'true'),
      ('4', 'Place Royale', '2', 'true'),
      ('5', 'Halifax Citadel', '3', 'true'),
      ('6', 'Garrison District', '4', 'true'),
      ('7','Confederation Centre of...','7', 'true'),
      ('8', 'Stone Hall Castle', '8', 'true'),
      ('9', 'West Edmonton Mall', '9', 'true'),
      ('10','Signal Hill', '10',' true'),
      ('11','Canadian Museum for Human...', '5',' true'),
      ('12', 'Royal BC Museum', '6', 'true'),
      ('13', 'Sunnyside Amusement Park', 'false');

select attraction_name from tourist_attraction
