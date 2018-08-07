SELECT a.score AS Score, (
    SELECT COUNT(DISTINCT score)
    FROM scores b
    WHERE b.score >= a.score
) AS Rank
FROM scores a
ORDER BY Rank;
