SELECT artist, COUNT(*) AS n_occurrences
FROM spotify_worldwide_daily_song_ranking
GROUP BY artist
ORDER BY n_occurrences DESC;
