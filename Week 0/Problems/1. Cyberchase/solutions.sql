-- In cyberchase.db you’ll find a single table, episodes. In the episodes table, you’ll find the following columns:

-- id, which uniquely identifies each row (episode) in the table
-- season, which is the season number in which the episode aired
-- episode_in_season, which is the episode’s number within its given season
-- title, which is the episode’s title
-- topic, which identifies the ideas the episode aimed to teach
-- air_date, which is the date (expressed as YYYY-MM-DD) on which the episode “aired” (i.e., was published)
-- production_code, which is the unique ID used by PBS to refer to each episode internally

------------------------------------------------------------------------------------------------------------------------
-- Problem 1 - write a SQL query to list the titles of all episodes in Cyberchase’s original season, Season 1.
SELECT "title" FROM "episodes"
WHERE "season" = 1;

-- Problem 2 - list the season number of, and title of, the first episode of every season.
SELECT "season", "title" FROM "episodes"
WHERE "episode_in_season" = 1;

-- Problem 3 - find the production code for the episode “Hackerized!”.
SELECT "production_code" FROM "episodes"
WHERE "title" = 'Hackerized!';

-- Problem 4 - write a query to find the titles of episodes that do not yet have a listed topic.
SELECT "title" FROM "episodes"
WHERE "topic" IS NULL;

-- Problem 5 - find the title of the holiday episode that aired on December 31st, 2004.
SELECT "title" FROM "episodes"
WHERE "air_date" = date('2004-12-31');

-- Problem 6 - list the titles of episodes from season 6 (2008) that were released early, in 2007.
SELECT "title" FROM "episodes"
WHERE "season" = 6
AND "air_date" < date('2008-01-01');

-- Problem 7 - write a SQL query to list the titles and topics of all episodes teaching fractions.
SELECT "title", "topic" FROM "episodes"
WHERE "topic" LIKE '%fractions%';

-- Problem 8 - write a query that counts the number of episodes released in the last 6 years, from 2018 to 2023, inclusive.
SELECT COUNT(*) AS "Number of episodes betwee 2018 and 2023" FROM "episodes"
WHERE "air_date" BETWEEN DATE('2018-01-01') AND DATE('2023-12-31');

-- Problem 9 - write a query that counts the number of episodes released in Cyberchase’s first 6 years, from 2002 to
-- 2007, inclusive.
SELECT COUNT("episode_in_season") AS "Number of episodes released in Cyberchase’s first 6 years" FROM "episodes"
WHERE "air_date" BETWEEN DATE('2002-01-01') AND DATE('2007-12-31');

-- Problem 10 - write a SQL query to list the ids, titles, and production codes of all episodes. Order the results by
-- production code, from earliest to latest.
SELECT "id", "title", "production_code" FROM "episodes"
ORDER BY "production_code" ASC;

-- Problem 11 - list the titles of episodes from season 5, in reverse alphabetical order.
SELECT "title" FROM "episodes"
WHERE "season" = 5
ORDER BY "title" DESC;

-- Problem 12 - count the number of unique episode titles.
SELECT COUNT(DISTINCT("title")) AS "Number of unique episode titles" FROM "episodes";

-- Problem 13 - write a SQL query to explore a question of your choice. This query should:
-- 13.1 Involve at least one condition, using WHERE with AND or OR
SELECT "season", "title", "air_date" FROM "episodes"
WHERE "season" >= 8 AND "air_date" < date('2015-01-01')
ORDER BY "season" ASC;




































