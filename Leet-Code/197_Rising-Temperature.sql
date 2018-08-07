SELECT b.id as Id
FROM weather a JOIN weather b ON TO_DAYS(a.recorddate) + 1 = TO_DAYS(b.recorddate)
WHERE b.temperature > a.temperature;
