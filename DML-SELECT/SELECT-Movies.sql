--task 1
SELECT NAME, ADDRESS
FROM STUDIO
WHERE NAME = 'MGM';

--task2
SELECT NAME, BIRTHDATE
FROM MOVIESTAR
WHERE NAME = 'Sandra Bullock';

--task3
SELECT STARNAME, MOVIETITLE, MOVIEYEAR
FROM STARSIN
WHERE MOVIEYEAR = 1980
AND MOVIETITLE LIKE '%Love%';
--when we use wildcards we need to ue the operator LIKE rather then =. Like is also not case-sensetive and is used for pattern matching while, = is used to search exact matches.

--task4
SELECT NAME, NETWORTH
FROM MOVIEEXEC
WHERE NETWORTH > 10000000;

--task5
SELECT NAME, GENDER, ADDRESS
FROM MOVIESTAR
WHERE GENDER LIKE 'M'
OR ADDRESS LIKE '%Malibu%';