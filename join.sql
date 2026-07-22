CREATE Table "user" (
    id SERIAL PRIMARY KEY,
    username VARCHAR(25)
)

CREATE Table post (
    id SERIAL PRIMARY KEY,
    title text NOT NULL,
    user_id INTEGER REFERENCES "user" (id) on delete set DEFAULT DEFAULT 2 --! deletes all posts of a user when the user is deleted and sets the user_id to default value (2 in this case)
)

-- user_id INTEGER REFERENCES "user"(id) on delete cascade --! deletes all posts of a user when the user is deleted
-- user_id INTEGER REFERENCES "user"(id) on delete set null --! deletes all posts of a user when the user is deleted and sets the user_id to null

INSERT INTO
    "user" (username)
VALUES ('akash'),
    ('batash'),
    ('sagor'),
    ('nodi');

INSERT INTO
    post (title, user_id)
VALUES (
        'Enjoying a sunny day with Akash! ☀️',
        2
    ),
    (
        'Batash just shared an amazing recipe! 🍲',
        1
    ),
    (
        'Exploring adventures with Sagor.🌟',
        4
    ),
    (
        'Nodi''s wisdom always leaves me inspired. 📚',
        4
    );

select * FROM "user";

select * FROM post;

select title, username
from post
    join "user" on post.user_id = "user".id;
--? joins the post and user tables on the user_id column, returning the title of the post and the username of the user who created it

select title, username
from post as p
    inner join "user" as u on p.user_id = u.id;
--? joins the post and user tables on the user_id column, returning the title of the post and the username of the user who created it

--* Inner Join => Returns only the rows where there is a match in both tables

--* Left Join => Returns all rows from the left table and the matched rows from the right table. If there is no match, NULL values are returned for columns from the right table.

--* Right Join => Returns all rows from the right table and the matched rows from the left table. If there is no match, NULL values are returned for columns from the left table.

INSERT INTO
    post (id, title, user_id)
VALUES (5, 'this is post title', NULL)

select * from post

select title, username
from post as p
    left join "user" as u on p.user_id = u.id;
--? left join the post and user tables on the user_id column, returning the title of the post and the username of the user who created it. If there is no match, NULL values are returned for columns from the right table.

select *
from post as p
    right join "user" as u on p.user_id = u.id;
--? right join the post and user tables on the user_id column, returning the title of the post and the username of the user who created it. If there is no match, NULL values are returned for columns from the left table.


select *
from post as p
    full join "user" as u on p.user_id = u.id; --? full join 




    