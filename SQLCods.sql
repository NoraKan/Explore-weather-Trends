---SQL Commands for Extracting Data:---
---1- List the cities in Saudi Arabia to check the nearest one’ I am in Saudi Arabia in Riyadh city’:
Select *  from city_list
Where 
    country like 'Saudi%';

---2- Extract ‘Riyadh’ city data to check the available data, noted that the year started from ‘1843’:
select * from city_data
where 
	city='Riyadh';

---3- Extract Global data with City Date for the matching years starting from ‘1843’:
select global_data.year,
concat(global_data.year ,' ',(global_data.year - 9) ) period,
global_data.avg_temp global_AT, 
city_data.avg_temp city_AT
from city_data, global_data
where 
	city_data.city='Riyadh'
and city_data.year=global_data.year;
