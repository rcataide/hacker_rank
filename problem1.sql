--Query the list of CITY names from STATION that either do not start with vowels or do not end with vowels. Your result cannot contain duplicates.
--Consulta da lista de nomes de CIDADES de STATION que não começam com vogais ou não terminam com vogais. O resultado não pode conter duplicados.
SELECT DISTINCT CITY FROM STATION
WHERE UPPER(SUBSTR(CITY,0,1)) NOT IN ('A','E','I','O','U')
OR UPPER(SUBSTR(REVERSE(CITY),0,1)) NOT IN ('A','E','I','O','U')
