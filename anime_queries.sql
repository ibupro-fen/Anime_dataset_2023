CREATE SCHEMA `anime_database` ;

SELECT * FROM anime_dataset_2023;

-- Find all anime titles with a score higher than 9.0

SELECT Name, Score, Type, Studios
FROM anime_dataset_2023
WHERE Score >= 9.0;

-- List top 10 most popular anime based on Popularity

SELECT Name, Score, Studios, Popularity
FROM anime_dataset_2023
ORDER BY Popularity ASC
LIMIT 10;

-- Count how many anime fall in each type

SELECT Type, COUNT(*) AS total_anime
FROM anime_dataset_2023
GROUP BY Type
ORDER BY total_anime DESC;

-- Studio that has produced the most anime with a score of greater than 8.0

SELECT Studios, COUNT(*) AS top_score_count
FROM anime_dataset_2023
WHERE Score >= 8.0
GROUP BY Studios
ORDER BY top_score_count DESC
LIMIT 5;
