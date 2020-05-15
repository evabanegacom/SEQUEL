-- Question 01
SELECT name FROM world
  WHERE population >
     (SELECT population FROM world
      WHERE name='Russia')

-- Question 02
SELECT name FROM world
  WHERE gdp/population > (SELECT gdp/population FROM world WHERE name = 'United Kingdom')
    AND continent = 'Europe';
    
-- Question 03
SELECT name, continent FROM world
  WHERE continent IN (SELECT continent FROM world where name IN ('Argentina', 'Australia'))
  ORDER BY name;
  
-- Question 04
SELECT name,population FROM world
  WHERE population BETWEEN (SELECT population FROM world WHERE name = 'Poland') AND
      (SELECT population FROM world WHERE name = 'Canada');
      
-- Question 05
SELECT name, CONCAT(ROUND(population/(SELECT population FROM world WHERE name = 'Germany')*100), '%')as percentage FROM world
  WHERE continent = 'Europe';
  
-- Question 06
SELECT name FROM world
  WHERE gdp > ALL(SELECT gdp FROM world WHERE continent = 'Europe' AND gdp > 0);
  
-- Question 07
SELECT continent, name, area FROM world x
  WHERE area >= ALL
    (SELECT area FROM world y
        WHERE y.continent=x.continent
          AND area>0)
          
-- Question 08
SELECT continent, name FROM world x
WHERE name <= ALL (SELECT name FROM world y
	                    WHERE x.continent = y.continent
					            ORDER BY name);
          
-- Question 09
SELECT name, continent, population FROM world x
WHERE 25000000 >= ALL (SELECT population FROM world WHERE x.continent = y.continent) ;
            
-- Question 10
SELECT name, continent FROM world x
  WHERE population > ALL(SELECT 3*population FROM world y WHERE x.continent = y.continent
                                                            AND x.name <> y.name);
