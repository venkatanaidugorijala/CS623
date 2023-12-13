CREATE INDEX idx_spatial_data_location ON spatial USING GIST(location);
WITH target_point AS (
    SELECT ST_GeomFromText('POINT(-73.9754 40.7590)', 4326) AS point
)
SELECT
    sid,
   sname,
    ST_Distance(location, target_point.point) AS distance
FROM
    spatial
ORDER BY
    distance;
