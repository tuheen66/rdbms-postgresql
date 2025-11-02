CREATE table "user"(
    id SERIAL PRIMARY KEY,
    username VARCHAR(25) NOT NULL
)

CREATE TABLE post(
    id SERIAL PRIMARY KEY,
    title TEXT NOT NULL,
    --user_id INTEGER REFERENCES "user"(id) on delete CASCADE --? CASCADE deletes post as well
    -- user_id INTEGER REFERENCES "user"(id) on delete set NULL --? sets NULL at user_id
    user_id INTEGER REFERENCES "user"(id) on delete set DEFAULT DEFAULT 2 --? sets default value
)


INSERT INTO "user" (username) VALUES
('akash'),
('batash'),
('sagor'),
('nodi'); 



INSERT INTO post(title, user_id) VALUES
('Enjoying a sunny day with Akash! ☀️', 2),
('Batash just shared an amazing recipe! 🍲', 1),
('Exploring adventures with Sagor.🌟', 4),
('Nodi''s wisdom always leaves me inspired. 📚', 4);


drop table "user";
drop table post

alter table post
alter COLUMN user_id SET NOT NULL


INSERT INTO post(title, user_id) VALUES('test', 4)

select * from "user";
select * from post


-- Insertion constraint on INSERT post
-- Attempting to insert a post with a user ID that does not exist
-- Inserting a post with a valid user ID
-- Attempting to insert a post without specifying a user ID



-- Deletion constraint on DELETE user
--! Restrict Deletion -> ON DELETE RESTRICT / ON DELETE NO ACTION (default) - cannot delete user until deleting post
delete from "user"
where id=4

--* Cascading Deletion -> ON DELETE CASCADE - delete user and delete corresponding post


--? Setting NULL -> ON DELETE SET NULL 
--? Set Default value -> ON DELETE SET DEFAULT

