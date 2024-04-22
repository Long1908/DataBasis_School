--task1
SELECT DISTINCT NAME
FROM CLASSES, SHIPS
WHERE DISPLACEMENT > 35000
AND SHIPS.CLASS = CLASSES.CLASS;

--task2
SELECT SHIPS.NAME as SHIPNAME, BORE, NUMGUNS
FROM CLASSES, SHIPS, OUTCOMES, BATTLES
WHERE SHIPS.CLASS = CLASSES.CLASS
AND SHIP = SHIPS.NAME
AND BATTLE = BATTLES.NAME
AND BATTLES.NAME = 'Guadalcanal';

--task3
SELECT M1.COUNTRY
FROM CLASSES M1, CLASSES M2
WHERE M1.COUNTRY = M2.COUNTRY
AND M1.TYPE = 'bb'
AND M2.TYPE = 'bc';

--task4
select distinct o1.battle
from classes c1, ships s1, outcomes o1,
     classes c2, ships s2, outcomes o2,
     classes c3, ships s3, outcomes o3
where c1.class=s1.class and s1.name=o1.ship
 and c2.class=s2.class and s2.name=o2.ship
 and c3.class=s3.class and s3.name=o3.ship
 and c1.country=c2.country and c1.country=c3.country
 and o1.battle=o2.battle and o1.battle=o3.battle
 and s1.name<>s2.name and s1.name<>s3.name and s2.name<>s3.name;

--task5
select o1.ship
from outcomes o1, battles b1, outcomes o2, battles b2
where o1.battle=b1.name
 and o2.battle=b2.name
 and o1.ship=o2.ship
 and b1.date<b2.date
and o1.result='damaged';