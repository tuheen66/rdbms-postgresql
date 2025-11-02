CREATE Table "user"(
    id SERIAL PRIMARY KEY,
    username VARCHAR(25) NOT NULL
)

CREATE Table post(
    id SERIAL PRIMARY KEY,
    title text NOT NULL,
    user_id INTEGER REFERENCES "user"(id)
)



INSERT INTO "user" (username) VALUES
('akash'),
('batash'),
('sagor'),
('nodi');

INSERT INTO post (title, user_id) VALUES
('Enjoying a sunny day with Akash! ☀️', 2),
('Batash just shared an amazing recipe! 🍲', 1),
('Exploring adventures with Sagor.🌟', 4),
('Nodi''s wisdom always leaves me inspired. 📚', 4);

SELECT * from "user";
SELECT * from post;

--? INNER JOIN => only common data are ahown
SELECT title, username FROM post
JOIN "user" ON post.user_id ="user".id

--? aliasing    "user" to u and post to p
SELECT * FROM post as p
JOIN "user" as u ON p.user_id =u.id


INSERT INTO post (id, title, user_id) VALUES
(5, 'Enjoying a sunny day with Akash! ☀️', NULL)

--? Left Join => all from left table and common data from right table
SELECT * FROM post as p
LEFT JOIN "user" as u ON p.user_id =u.id

--? common data from right table and all from right table
SELECT * FROM post as p
RIGHT JOIN "user" as u ON p.user_id =u.id


--? full join ==> keep everything from both table and filling missing data with NULL
SELECT * FROM post as p
FULL JOIN "user" as u ON p.user_id =u.id




