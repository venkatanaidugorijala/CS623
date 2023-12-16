SELECT aid, aname, ST_Area(boundary) AS area
FROM areas
ORDER BY area DESC
LIMIT 2;
