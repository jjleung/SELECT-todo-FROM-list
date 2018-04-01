DROP DATABASE IF EXISTS todo_app;
DROP USER IF EXISTS michael;
CREATE USER michael WITH ENCRIPTED PASSWORD 'stonebreaker';
CREATE DATABASE todo_app;
\c todo_app;
CREATE TABLE tasks (
    task_id SERIAL NOT NULL PRIMARY KEY,
    title varchar(255) NOT NULL,
    description text,
    created_at timestamp NOT NULL DEFAULT now(),
    updated_at timestamp,
    completed boolean NOT NULL DEFAULT false
);

ALTER TABLE tasks 
    DROP COLUMN IF EXISTS completed,
    ADD COLUMN completed_at timestamp,
    ALTER COLUMN updated_at SET NOT NULL, 
    ALTER COLUMN updated_at SET DEFAULT now();

INSERT INTO tasks VALUES (
    DEFAULT,
    'Study SQL',
    'Complete this exercise',
    now(),
    now(),
    NULL
    );

INSERT INTO tasks (title, description) VALUES
    ('Study PostgreSQL', 'Read all the documentation');

SELECT title FROM tasks WHERE completed_at is NULL;

UPDATE tasks SET completed_at = now() WHERE title = 'Study PostgreSQL';

SELECT title, description FROM tasks WHERE completed_at is NULL;

SELECT * FROM tasks ORDER BY created_at DESC;

INSERT INTO tasks (title, description) VALUES
    ('mistake 1', 'a test entry');

INSERT INTO tasks (title, description) VALUES
    ('mistake 2', 'another test entry');

INSERT INTO tasks (title, description) VALUES
    ('third mistake', 'another test entry');

SELECT title FROM tasks WHERE tasks.title LIKE '%mistake%';

DELETE FROM tasks WHERE tasks.title LIKE 'mistake 1';

SELECT title, description FROM tasks WHERE tasks.title LIKE '%mistake%';

DELETE FROM tasks WHERE tasks.title LIKE '%mistake%';

SELECT * FROM tasks ORDER BY title;