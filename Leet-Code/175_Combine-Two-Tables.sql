SELECT FirstName, LastName, City, State
FROM person LEFT JOIN address ON person.personid = address.personid;