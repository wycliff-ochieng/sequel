CREATE DATABASE global_energy;

USE global_energy;

DROP TABLE energy;

SELECT * FROM global_renewable_energy_production;

SELECT lower(Country) FROM global_renewable_energy_production;

SELECT round(SolarEnergy,2) FROM global_renewable_energy_production;

SELECT Country FROM global_renewable_energy_production;

SELECT count(Country) FROM global_renewable_energy_production;

CREATE TABLE music(
genre VARCHAR(100),
streams int
);

INSERT INTO music(genre,streams) 
VALUES('R&B, Hip Hop', '6622456'),
	('Rock', '1577569'),
      ('Pop', '1298756'),
      ('Country', '764789'),
      ('Latin ','601758'),
      ('Dance Electronic', '308745');
      
SELECT count(genre) FROM music;
SELECT max(streams) FROM music;
SELECT min(streams) FROM music;
SELECT avg(streams) FROM music;

SELECT count(genre)FROM music WHERE streams>500000;

CREATE TABLE sales(
sales_id int,
customer_name VARCHAR(100),
sales_person VARCHAR(100),
amount int
);

INSERT INTO sales(sales_id,customer_name,sales_person,amount)
VALUES(1, 'Bill McKenna', 'Sally','12.34'),
	  (2, 'Carlos Souza', 'Sally', '28.28'),
      (3, 'Bill McKenna','Tom' ,'9.72'),
      (4, 'Bill McKenna', 'Sally', '17.54'),
      (5, 'Jane Bird', 'Tom', '34.44');
SELECT sum(amount) FROM sales GROUP BY(customer_name);
SELECT avg(SolarEnergy) FROM global_renewable_energy_production;
SELECT sum(WindEnergy),Year FROM  global_renewable_energy_production GROUP BY Year,Year;
