WITH vowel_cities AS (
  SELECT DISTINCT CITY,
         LOWER(CITY) AS lc_city
  FROM STATION
)
SELECT CITY
FROM vowel_cities
WHERE LEFT(lc_city, 1) IN ('a','e','i','o','u')
  AND RIGHT(lc_city, 1) IN ('a','e','i','o','u');
