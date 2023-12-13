SELECT
    sid,
    sname,
    ST_Distance(
        location,
        ST_GeomFromText('POINT(-73.9754 40.7590)', 4326)
    ) AS distance
FROM
    spatial;
