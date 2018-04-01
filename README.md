# SELECT todo FROM list

### SQL CRUD Exercise in PostgreSQL

Prepare SQL statements while testing them on a local running database.

## To Do List Application

Write all of your SQL statements in todo_app.sql

1.  Write a query to drop a database named `todo_app` if it exists
2.  Write a query to delete a user named `michael` if it exists
3.  Write a query to create a user named `michael` with an encrypted password `stonebreaker`
4.  Write a query to create a database named `todo_app`
5.  Connect to the newly created database
6.  Write a query to create a table named `tasks` using the **Initial columns** detailed below
7.  Define column `id` as the table's primary key
8.  Write queries to accomplish the following
9.  remove the column named `completed`
10. add a column to `tasks` named `completed_at`:timestamp, that may be NULL, and has a default value of `NULL`.
11. change the `updated_at` column to not allow NULL values, and have a default value of `now()`
    s12. create a new task, by only setting values (not defining which columns)
    `id = default value`  
     `title = 'Study SQL'`  
     `description = 'Complete this exercise'`  
     `created_at = now()`  
     `updated_at = now()`  
     `completed_at = NULL`
12. create a new task  
    `title = 'Study PostgreSQL'`  
    `description = 'Read all the documentation'`
13. select all the titles of tasks that are not yet completed
14. update the task with a title of `'Study SQL'` to be completed as of now
15. select all titles and descriptions of tasks that are not yet completed
16. select all fields of every task sorted by creation date in descending order
17. create a new task  
    `title = 'mistake 1'`  
    `description = 'a test entry'`
18. create a new task  
    `title = 'mistake 2'`  
    `description = 'another test entry'`
19. create a new task  
    `title = 'third mistake'`  
    `description = 'another test entry'`
20. select title fields of all tasks with a title that includes the word `'mistake'`
21. delete the task that has a title of `mistake 1`
22. select title and description fields of all tasks with a title that includes the word `'mistake'`
23. delete all tasks that includes the word `'mistake'` in the title
24. select all fields of all tasks sorted by `title` in ascending order

#### Initial Columns for `tasks`

| Column Name | Datatype                | NULL  | Default           |
| ----------- | ----------------------- | ----- | ----------------- |
| id          | integer                 | false | auto incrementing |
| title       | character varying (255) | false |                   |
| description | text                    | true  |                   |
| created_at  | timestamp (no tz)       | false | now()             |
| updated_at  | timestamp (no tz)       | true  |                   |
| completed   | boolean                 | false | false             |

#### Final Columns for `tasks`

| Column Name  | Datatype                | NULL  | Default           |
| ------------ | ----------------------- | ----- | ----------------- |
| id           | integer                 | false | auto incrementing |
| title        | character varying (255) | false |                   |
| description  | text                    | true  |                   |
| created_at   | timestamp (no tz)       | false | now()             |
| updated_at   | timestamp (no tz)       | false | now()             |
| completed_at | timestamp (no tz)       | true  | NULL              |
