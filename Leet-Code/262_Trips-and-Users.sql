SELECT Day, ROUND(num_cancels / total, 2) AS 'Cancellation Rate'
FROM (
  SELECT request_at AS Day,
         SUM(
             CASE WHEN status != 'completed' THEN 1
                  ELSE 0
             END) AS num_cancels,
         COUNT(*) AS total
  FROM trips t RIGHT JOIN users u ON t.client_id = u.users_id
  WHERE u.banned = 'No' AND
        u.role = 'client' AND
        t.request_at BETWEEN DATE('2013-10-01') AND DATE('2013-10-03')
  GROUP BY request_at
) x
ORDER BY Day;
