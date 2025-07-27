SELECT 
CONCAT(Name,'(',LEFT(Occupation,1),')') AS Output
From OCCUPATIONS
UNION ALL
SELECT
CONCAT('There are a total of ' ,Count(*),' ',Lower(Occupation),'s.') AS Output
From OCCUPATIONS
GROUP BY Occupation
ORDER BY Output;