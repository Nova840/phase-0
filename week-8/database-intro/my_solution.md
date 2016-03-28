1. select * from states;
2. select * from regions;
3. select state_name, population from states;
4. select state_name, population from states order by population desc;
5. select state_name from states where region_id in (7);
6. select state_name, population_density from states where population_density > 50 order by population_density asc;
7. select state_name from states where population between 1000000 and 1500000;
8. select state_name, region_id from states order by region_id asc;
9. select region_name from regions where region_name like "%central%";
10. select region_name, state_name from states inner join regions on states.region_id = regions.id order by region_id asc;

![persons-outfits schema](persons-outfits%20schema.png)

**What are databases for?**

Databases are used for storing and being able to retrieve data.

**What is a one-to-many relationship?**

A one-to-many relationship is when *thing 1* belongs to a *thing 2* and *thing 2* has many *thing 1*s

**What is a primary key? What is a foreign key? How can you determine which is which?**

A primary key is a key in a table and a foreign key is a primary key in a different table.

**How can you select information out of a SQL database? What are some general guidelines for that?**

You select information out of a table using the select command. You then provide information about what to display.