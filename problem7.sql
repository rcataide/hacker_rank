/*Pivot the Occupation column in OCCUPATIONS so that each Name is sorted alphabetically and displayed underneath its
corresponding Occupation. The output column headers should be Doctor, Professor, Singer, and Actor, respectively.

Note: Print NULL when there are no more names corresponding to an occupation.*/

SELECT 
  NVL(MAX(CASE WHEN occupation = 'Doctor' THEN name END), 'NULL') AS Doctor, 
  NVL(MAX(CASE WHEN occupation = 'Professor' THEN name END), 'NULL') AS Professor, 
  NVL(MAX(CASE WHEN occupation = 'Singer' THEN name END), 'NULL') AS Singer,
  NVL(MAX(CASE WHEN occupation = 'Actor' THEN name END), 'NULL') AS Actor 
  FROM (
          SELECT name, 
                 occupation, 
                 ROW_NUMBER() OVER (PARTITION BY occupation ORDER BY name) AS rn 
          FROM OCCUPATIONS) 
  GROUP BY rn ORDER BY rn;
