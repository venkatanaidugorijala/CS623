WITH target_point AS (
    SELECT ST_GeomFromText('POINT(-73.9754 40.7590)', 4326) AS point
)
SELECT
    sid,
    sname,
    ST_Distance(location, target_point.point) AS distance
FROM
    spatial
WHERE
-- Add conditions to limit rows if possible
ORDER BY
    distance
LIMIT 100; -- Adjust the limit based on your needs
