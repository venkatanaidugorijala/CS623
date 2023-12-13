Create a table with spatial data:
	CREATE TABLE spatial(
                sid SERIAL PRIMARY KEY,
   	 sname VARCHAR(255),
 	location GEOMETRY(Point, 4326)
 	); 
Insert values into table
            INSERT INTO spatial(sname, location) VALUES
