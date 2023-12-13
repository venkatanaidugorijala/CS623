CREATE TABLE areas(
    aid SERIAL PRIMARY KEY,
    aname VARCHAR(255),
    boundary GEOMETRY(Polygon, 4326)
);

INSERT INTO areas (aname, boundary) VALUES
('Area 1', ST_GeomFromText('POLYGON((-73.9900 40.7500, -74.0000 40.7500, -74.0000 40.7600, -73.9900 40.7600, -73.9900 40.7500))', 4326)),
('Area 2', ST_GeomFromText('POLYGON((-74.0100 40.7100, -74.0200 40.7100, -74.0200 40.7200, -74.0100 40.7200, -74.0100 40.7100))', 4326));
=> Retrieve area using a SELECT query:
SELECT aid, aname, ST_Area(boundary) AS area
FROM areas;
