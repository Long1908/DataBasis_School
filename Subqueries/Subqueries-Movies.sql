--task1
select name
from moviestar
    where name in (
    select name
    from movieexec
    where networth>10000000);

--task2
SELECT NAME
FROM MOVIESTAR
WHERE NAME NOT IN (
    SELECT NAME
    FROM MOVIEEXEC
    );

--task3
SELECT TITLE
FROM MOVIE
WHERE LENGTH > (
    SELECT LENGTH
    FROM MOVIE
    WHERE TITLE = 'Gone With the Wind'
    );

--task4
SELECT DISTINCT NAME, TITLE
FROM MOVIEEXEC, MOVIE
WHERE NETWORTH > (
    SELECT NETWORTH
    FROM MOVIEEXEC
    WHERE NAME = 'Merv Griffin'
    )
AND PRODUCERC# = CERT#;

--task5
SELECT m.TITLE
FROM MOVIE m
WHERE m.LENGTH >= ALL(
    SELECT LENGTH
    FROM MOVIE
    WHERE m.STUDIONAME = STUDIONAME --'ПО СТУДИО'. ТОВА ОЗНАЧАВА
    );
