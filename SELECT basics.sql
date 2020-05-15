
-- Question 01
SELECT  population FROM world
    WHERE name = 'Germany';

-- Question 02
SELECT name, population FROM world
    WHERE name IN ('Sweden', 'Norway', 'Denmark');

-- Question 03
SELECT name, area FROM world
  WHERE area BETWEEN 200000 AND 250000;
