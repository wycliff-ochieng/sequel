CREATE DATABASE analysis;

USE analysis;

CREATE TABLE subway_system(
subway_system varchar(50)
city varchar(100),
country_code varchar(10)
);

create table country(
conutry_code varchar(10),
country varchar(10)
);

insert into subway_system(subway_sytem,city,country_code)
values('Buenos Aires Underground', 'Buenos Aires', 'AR'),
values ('Sydney Metro', 'Sydney', 'AU'),
values('Vienna U-Bahn','Vienna', 'AT'),
values('Montreal Metro','Montreal', 'CA'),
values('Shanghai','Metro Shanghai ','CN'),
values('London Underground ','London',' GB'),
value('MBTA','Boston', 'US'),
values('Chicago L','Chicago', 'US'),
values('BART','San Francisco', 'US'),
values('Washington Metro', 'Washington, D.C.', 'US'),
values('Caracas Metro', 'Caracas', 'VE');

insert into country(country_code,country)
values('AR', 'Argentina'),
      ('AT ','Austria'),
      ('AU ','Australia'),
      ('BD', 'Bangladesh'),
      ('BE', 'Belgium');
