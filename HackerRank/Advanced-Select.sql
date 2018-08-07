-- Type of Triangle
-- (MySQL)

SELECT CASE WHEN A = B AND B = C THEN 'Equilateral'
            WHEN A + B <= C OR B + C <= A OR A + C <= B THEN 'Not A Triangle'
            WHEN (A = B OR B = C OR A = C) THEN 'Isosceles'
            ELSE 'Scalene'
        END
FROM triangles;

-- The PADS
-- (MySQL)

SELECT CONCAT(name, '(', SUBSTRING(occupation, 1, 1), ')') as name
FROM occupations
ORDER BY name;

SELECT CONCAT('There are a total of ', COUNT(occupation), ' ', LOWER(occupation), 's.') as total
FROM occupations
GROUP BY occupation
ORDER BY total;

-- Occupations
-- (MySQL)

-- Too hard