
-- 01 --
SELECT yr, subject, winner
  FROM nobel WHERE yr = 1950

-- 02 --
SELECT winner FROM nobel
 WHERE yr = 1962 AND subject = 'Literature'

--  03 --
SELECT yr, subject FROM nobel 
    WHERE winner = 'Albert Einstein'

--  04 --
SELECT winner FROM nobel
  WHERE subject = 'Peace' AND yr >= 2000;

--  05 --
SELECT yr, subject, winner FROM nobel WHERE subject = 'Literature' and  yr BETWEEN 1980  AND 1989

-- 06 --
SELECT * FROM nobel
 WHERE winner IN ('Theodore Roosevelt',
                  'Woodrow Wilson',
                  'Jimmy Carter',
                  'Barack Obama')

-- 07 --
SELECT winner FROM nobel WHERE winner LIKE 'John%'

-- 08 --
SELECT yr, subject , winner FROM nobel  WHERE (subject = 'Physics' AND yr = 1980) OR (subject = 'Chemistry' AND yr = 1984)

-- 09 --
SELECT yr, subject, winner FROM nobel WHERE yr = 1980 AND subject NOT IN('Chemistry' , 'Medicine')

-- 10 --
SELECT * FROM nobel
  WHERE subject = 'Medicine' AND yr < 1910
     OR subject = 'Literature' AND yr >= 2004;

-- 11 --
SELECT yr, subject,winner FROM nobel WHERE winner = 'Peter Grünberg'

-- 12 --
SELECT yr, subject,winner FROM nobel WHERE winner = 'EUGENE O''Neill '

-- 13 --
SELECT winner, yr, subject FROM  nobel WHERE winner LIKE 'Sir%'
ORDER BY yr DESC

-- 14 --
SELECT winner, subject
  FROM nobel
 WHERE yr=1984
 ORDER BY CASE WHEN subject IN ('Physics','Chemistry') THEN 1 ELSE 0 END, subject, winner;
