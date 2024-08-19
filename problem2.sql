--Query the list of CITY names from STATION that do not start with vowels and do not end with vowels. Seu resultado não pode conter duplicatas.
--Consulte a lista de nomes de CIDADES de STATION que não iniciam por vogal e não terminam por vogal. O resultado não pode conter duplicatas.
SELECT DISTINCT CITY FROM STATION
WHERE UPPER(SUBSTR(CITY,0,1)) NOT IN ('A','E','I','O','U')
OR UPPER(SUBSTR(REVERSE(CITY),0,1)) NOT IN ('A','E','I','O','U')
