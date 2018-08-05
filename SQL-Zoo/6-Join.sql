-- Problem 1

SELECT matchid, player FROM goal 
WHERE teamid = 'GER';

-- Problem 2

SELECT id, stadium, team1, team2
FROM game
WHERE id=1012;

-- Problem 3

SELECT  player, teamid, stadium, mdate
FROM game JOIN goal ON (id=matchid)
WHERE teamid='GER';

-- Problem 4

SELECT  team1, team2, player
FROM game JOIN goal ON (id=matchid)
WHERE player LIKE 'Mario%';

-- Problem 5

SELECT player, teamid, coach, gtime
FROM goal JOIN eteam on teamid=id
WHERE gtime<=10;

-- Problem 6

SELECT mdate, teamname
FROM game JOIN eteam ON (team1=eteam.id)
WHERE coach='Fernando Santos';

-- Problem 7

SELECT player
FROM game JOIN goal ON (id=matchid)
WHERE stadium='National Stadium, Warsaw';

-- Problem 8

SELECT DISTINCT player
FROM game JOIN goal ON matchid = id 
WHERE (teamid!='GER') AND
      (team1='GER' OR team2='GER');

-- Problem 9

SELECT teamname, COUNT(*)
FROM eteam JOIN goal ON id=teamid
GROUP BY teamname;

-- Problem 10

SELECT stadium, COUNT(*)
FROM game JOIN goal ON (id=matchid)
GROUP BY stadium;

-- Problem 11

SELECT matchid, mdate, COUNT(teamid)
FROM (
  SELECT *
  FROM game JOIN goal ON matchid = id 
  WHERE (game.team1 = 'POL' OR game.team2 = 'POL')
) x
GROUP BY matchid;

-- Problem 12

SELECT matchid, mdate, COUNT(teamid)
FROM (
  SELECT *
  FROM game JOIN goal ON matchid = id 
  WHERE (teamid='GER') AND (game.team1 = 'GER' OR game.team2 = 'GER')
) x
GROUP BY matchid;

-- Problem 13

SELECT mdate,
  team1,
  SUM(CASE WHEN teamid=team1 THEN 1 ELSE 0 END) score1,
  team2,
  SUM(CASE WHEN teamid=team2 THEN 1 ELSE 0 END) score2
FROM game LEFT JOIN goal ON matchid = id
GROUP BY mdate, team1, team2;
