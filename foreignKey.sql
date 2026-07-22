
drop table "user";

drop table post;

CREATE Table "user" (
    id SERIAL PRIMARY KEY,
    username VARCHAR(25)
)

CREATE Table post(
    id SERIAL PRIMARY KEY,
    title text NOT NULL,
    user_id INTEGER REFERENCES "user"(id) on delete set DEFAULT DEFAULT 2 --! deletes all posts of a user when the user is deleted and sets the user_id to default value (2 in this case)
)

-- user_id INTEGER REFERENCES "user"(id) on delete cascade --! deletes all posts of a user when the user is deleted
-- user_id INTEGER REFERENCES "user"(id) on delete set null --! deletes all posts of a user when the user is deleted and sets the user_id to null


ALTER Table post alter COLUMN user_id set NOT null;

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

insert into post (title, user_id) values ('test', 4)

--! Insertion constraint on INSERT post
-- Attempting to insert a post with a user ID that does not exist
-- Inserting a post with a valid user ID
-- Attempting to insert a post without specifying a user ID

delete from "user" where id = 4;

--! Deletion constraint on DELETE user
-- Restrict Deletion -> ON DELETE RESTRICT / ON DELETE NO ACTION (default)
-- Cascading Deletion -> ON DELETE CASCADE
-- Setting NULL -> ON DELETE SET NULL
-- Set Default value -> ON DELETE SET DEFAULT