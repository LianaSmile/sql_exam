-- CREATE TABLE "movies" (
--   "id" SERIAL PRIMARY KEY,
--   "title" varchar(100) NOT NULL,
--   "year" timestamp NOT NULL,
--   "country" varchar(50) NOT NULL,
--   "duration" integer NOT NULL,
--   "description" text,
--   "premiere" timestamp,
--   "score" numeric,
--   "created_at" timestamp,
--   "updated_at" timestamp
-- );

-- CREATE TABLE "directors" (
--   "id" SERIAL PRIMARY KEY,
--   "name" varchar(50) NOT NULL,
--   "last_name" varchar(50) NOT NULL,
--   "created_at" timestamp,
--   "updated_at" timestamp
-- );

-- CREATE TABLE "actors" (
--   "id" SERIAL PRIMARY KEY,
--   "name" varchar(50) NOT NULL,
--   "last_name" varchar(50) NOT NULL,
--   "created_at" timestamp,
--   "updated_at" timestamp
-- );

-- CREATE TABLE "users" (
--   "id" SERIAL PRIMARY KEY,
--   "name" varchar(50) NOT NULL,
--   "last_name" varchar(50) NOT NULL,
--   "email" varchar(70),
--   "password" varchar(100),
--   "created_at" timestamp,
--   "updated_at" timestamp
-- );

-- CREATE TABLE "genres" (
--   "id" SERIAL PRIMARY KEY,
--   "genre_name" varchar(100) NOT NULL
-- );

-- CREATE TABLE "comments" (
--   "id" SERIAL PRIMARY KEY,
--   "text" text,
--   "user_id" integer,
--   "movie_id" integer,
--   "created_at" timestamp
-- );

-- CREATE TABLE "reviews" (
--   "id" SERIAL PRIMARY KEY,
--   "text" text,
--   "user_id" integer,
--   "movie_id" integer,
--   "created_at" timestamp
-- );

-- CREATE TABLE "director_movie" (
--   "id" SERIAL PRIMARY KEY,
--   "director_id" integer,
--   "movie_id" integer
-- );

-- CREATE TABLE "actor_movie" (
--   "id" SERIAL PRIMARY KEY,
--   "movie_id" integer,
--   "actor_id" integer
-- );

-- CREATE TABLE "genre_movie" (
--   "id" SERIAL PRIMARY KEY,
--   "movie_id" integer,
--   "genre_id" integer,
--   unique(movie_id, genre_id)
-- );

-- CREATE TABLE "views" (
--   "id" SERIAL PRIMARY KEY,
--   "movie_id" integer,
--   "user_id" integer,
--   unique(movie_id, user_id)
-- );

-- ALTER TABLE "comments" ADD FOREIGN KEY ("user_id") REFERENCES "users" ("id");

-- ALTER TABLE "comments" ADD FOREIGN KEY ("movie_id") REFERENCES "movies" ("id");

-- ALTER TABLE "reviews" ADD FOREIGN KEY ("user_id") REFERENCES "users" ("id");

-- ALTER TABLE "reviews" ADD FOREIGN KEY ("movie_id") REFERENCES "movies" ("id");

-- ALTER TABLE "director_movie" ADD FOREIGN KEY ("director_id") REFERENCES "directors" ("id");

-- ALTER TABLE "director_movie" ADD FOREIGN KEY ("movie_id") REFERENCES "movies" ("id");

-- ALTER TABLE "actor_movie" ADD FOREIGN KEY ("movie_id") REFERENCES "movies" ("id");

-- ALTER TABLE "actor_movie" ADD FOREIGN KEY ("actor_id") REFERENCES "actors" ("id");

-- ALTER TABLE "genre_movie" ADD FOREIGN KEY ("movie_id") REFERENCES "movies" ("id");

-- ALTER TABLE "genre_movie" ADD FOREIGN KEY ("genre_id") REFERENCES "genres" ("id");

-- ALTER TABLE "views" ADD FOREIGN KEY ("movie_id") REFERENCES "movies" ("id");

-- ALTER TABLE "views" ADD FOREIGN KEY ("user_id") REFERENCES "users" ("id");

-- INSERT INTO "movies" ("title", "year", "country", "duration", "description", "premiere", "score", "created_at", "updated_at")
-- VALUES
--   ('Movie 1', '2015-01-01', 'Country 1', 120, 'Description 1', '2015-01-01', 8.5, NOW(), NOW()),
--   ('Movie 2', '2016-01-01', 'Country 2', 110, 'Description 2', '2016-01-01', 7.9, NOW(), NOW()),
--   ('Movie 3', '2017-01-01', 'Country 3', 105, 'Description 3', '2017-01-01', 6.8, NOW(), NOW()),
--   ('Movie 4', '2018-01-01', 'Country 4', 130, 'Description 4', '2018-01-01', 9.1, NOW(), NOW()),
--   ('Movie 5', '2019-01-01', 'Country 5', 95, 'Description 5', '2019-01-01', 8.0, NOW(), NOW()),
--   ('Movie 6', '2020-01-01', 'Country 6', 100, 'Description 6', '2020-01-01', 7.5, NOW(), NOW()),
--   ('Movie 7', '2021-01-01', 'Country 7', 115, 'Description 7', '2021-01-01', 8.3, NOW(), NOW()),
--   ('Movie 8', '2022-01-01', 'Country 8', 125, 'Description 8', '2022-01-01', 6.9, NOW(), NOW()),
--   ('Movie 9', '2023-01-01', 'Country 9', 95, 'Description 9', '2023-01-01', 7.2, NOW(), NOW()),
--   ('Movie 10', '2024-01-01', 'Country 10', 105, 'Description 10', '2024-01-01', 8.8, NOW(), NOW());

-- INSERT INTO "directors" ("name", "last_name", "created_at", "updated_at")
-- VALUES
--   ('Director 1', 'Lastname 1', NOW(), NOW()),
--   ('Director 2', 'Lastname 2', NOW(), NOW()),
--   ('Director 3', 'Lastname 3', NOW(), NOW()),
--   ('Director 4', 'Lastname 4', NOW(), NOW()),
--   ('Director 5', 'Lastname 5', NOW(), NOW()),
--   ('Director 6', 'Lastname 6', NOW(), NOW()),
--   ('Director 7', 'Lastname 7', NOW(), NOW()),
--   ('Director 8', 'Lastname 8', NOW(), NOW()),
--   ('Director 9', 'Lastname 9', NOW(), NOW()),
--   ('Director 10', 'Lastname 10', NOW(), NOW());

-- INSERT INTO "actors" ("name", "last_name", "created_at", "updated_at")
-- VALUES
--   ('Actor 1', 'Lastname 1', NOW(), NOW()),
--   ('Actor 2', 'Lastname 2', NOW(), NOW()),
--   ('Actor 3', 'Lastname 3', NOW(), NOW()),
--   ('Actor 4', 'Lastname 4', NOW(), NOW()),
--   ('Actor 5', 'Lastname 5', NOW(), NOW()),
--   ('Actor 6', 'Lastname 6', NOW(), NOW()),
--   ('Actor 7', 'Lastname 7', NOW(), NOW()),
--   ('Actor 8', 'Lastname 8', NOW(), NOW()),
--   ('Actor 9', 'Lastname 9', NOW(), NOW()),
--   ('Actor 10', 'Lastname 10', NOW(), NOW());

-- INSERT INTO "users" ("name", "last_name", "email", "password", "created_at", "updated_at")
-- VALUES
--   ('User 1', 'Lastname 1', 'user1@example.com', 'password1', NOW(), NOW()),
--   ('User 2', 'Lastname 2', 'user2@example.com', 'password2', NOW(), NOW()),
--   ('User 3', 'Lastname 3', 'user3@example.com', 'password3', NOW(), NOW()),
--   ('User 4', 'Lastname 4', 'user4@example.com', 'password4', NOW(), NOW()),
--   ('User 5', 'Lastname 5', 'user5@example.com', 'password5', NOW(), NOW()),
--   ('User 6', 'Lastname 6', 'user6@example.com', 'password6', NOW(), NOW()),
--   ('User 7', 'Lastname 7', 'user7@example.com', 'password7', NOW(), NOW()),
--   ('User 8', 'Lastname 8', 'user8@example.com', 'password8', NOW(), NOW()),
--   ('User 9', 'Lastname 9', 'user9@example.com', 'password9', NOW(), NOW()),
--   ('User 10', 'Lastname 10', 'user10@example.com', 'password10', NOW(), NOW());

-- INSERT INTO "genres" ("genre_name")
-- VALUES
--   ('Genre 1'),
--   ('Genre 2'),
--   ('Genre 3'),
--   ('Genre 4'),
--   ('Genre 5'),
--   ('Genre 6'),
--   ('Genre 7'),
--   ('Genre 8'),
--   ('Genre 9'),
--   ('Genre 10');

-- INSERT INTO "comments" ("text", "user_id", "movie_id", "created_at")
-- VALUES
--   ('Comment 1', 1, 1, NOW()),
--   ('Comment 2', 2, 1, NOW()),
--   ('Comment 3', 3, 2, NOW()),
--   ('Comment 4', 4, 3, NOW()),
--   ('Comment 5', 5, 3, NOW()),
--   ('Comment 6', 6, 4, NOW()),
--   ('Comment 7', 7, 5, NOW()),
--   ('Comment 8', 8, 6, NOW()),
--   ('Comment 9', 9, 7, NOW()),
--   ('Comment 10', 10, 8, NOW());

-- INSERT INTO "reviews" ("text", "user_id", "movie_id", "created_at")
-- VALUES
--   ('Review 1', 1, 1, NOW()),
--   ('Review 2', 2, 2, NOW()),
--   ('Review 3', 3, 3, NOW()),
--   ('Review 4', 4, 4, NOW()),
--   ('Review 5', 5, 5, NOW()),
--   ('Review 6', 6, 6, NOW()),
--   ('Review 7', 7, 7, NOW()),
--   ('Review 8', 8, 8, NOW()),
--   ('Review 9', 9, 9, NOW()),
--   ('Review 10', 10, 10, NOW());

-- INSERT INTO "director_movie" ("director_id", "movie_id")
-- VALUES
--   (1, 1),
--   (2, 2),
--   (3, 3),
--   (4, 4),
--   (5, 5),
--   (6, 6),
--   (7, 7),
--   (8, 8),
--   (9, 9),
--   (10, 10);

-- INSERT INTO "actor_movie" ("movie_id", "actor_id")
-- VALUES
--   (1, 1),
--   (1, 2),
--   (2, 3),
--   (3, 4),
--   (3, 5),
--   (4, 6),
--   (5, 7),
--   (6, 8),
--   (7, 9),
--   (8, 10);

-- INSERT INTO "genre_movie" ("movie_id", "genre_id")
-- VALUES
--   (1, 1),
--   (1, 2),
--   (2, 3),
--   (3, 4),
--   (3, 5),
--   (4, 6),
--   (5, 7),
--   (6, 8),
--   (7, 9),
--   (8, 10);

-- INSERT INTO "views" ("movie_id", "user_id")
-- VALUES
--   (1, 1),
--   (1, 2),
--   (2, 3),
--   (3, 4),
--   (3, 5),
--   (4, 6),
--   (5, 7),
--   (6, 8),
--   (7, 9),
--   (8, 10);

-- 1) Return the average duration, for films released in 2019. 

-- SELECT EXTRACT(YEAR FROM year) AS movie_year, ROUND(AVG(duration), 2) AS average_duration
-- FROM movies
-- WHERE EXTRACT(YEAR FROM year) = 2019
-- GROUP BY EXTRACT(YEAR FROM year);

-- 2) Return Top 10 films. (Each film must have the score filed) 

-- SELECT *
-- FROM movies
-- ORDER BY score DESC
-- LIMIT 10;

-- 3) Return films that don’t have comments. 

-- SELECT movies.title, movies.year, movies.country
-- FROM movies
-- LEFT JOIN comments ON movies.id = comments.movie_id
-- WHERE comments.id IS null;

-- 4) Return films that have the “Super” word in comments. 

-- SELECT movies.title, movies.year, movies.country, comments.text
-- FROM movies
-- JOIN comments ON movies.id = comments.movie_id
-- WHERE UPPER(comments.text) LIKE UPPER('%Super%');

-- 5) Return 10 the most viewed films with comments. 

-- SELECT movies.title, COUNT(*) AS views_count
-- FROM movies
-- JOIN views ON movies.id = views.movie_id
-- WHERE movies.id IN (SELECT movie_id FROM comments)
-- GROUP BY movies.title
-- ORDER BY COUNT(*) DESC
-- LIMIT 10;

-- 6) Return comedian films with comments

-- SELECT movies.title, genres.genre_name
-- FROM genre_movie
-- JOIN genres ON genre_movie.movie_id = genres.id
-- JOIN movies ON genre_movie.movie_id = movies.id
-- WHERE movies.id IN (SELECT movie_id FROM comments) AND
-- genres.genre_name = 'comedian';



