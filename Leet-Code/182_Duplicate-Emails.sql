SELECT DISTINCT a.email as Email
FROM person a JOIN person b ON a.id != b.id AND a.email = b.email;
