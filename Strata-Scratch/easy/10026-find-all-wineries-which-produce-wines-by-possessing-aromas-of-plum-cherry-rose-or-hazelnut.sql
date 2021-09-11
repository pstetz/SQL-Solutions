SELECT DISTINCT winery FROM winemag_p1
WHERE description ILIKE '%hazelnut%' OR
      description ILIKE '%plum%' OR
      description ILIKE '%cherry%' OR
      description ILIKE '%rose%';
