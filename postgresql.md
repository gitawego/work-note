# PostgreSQL Tutorial

## tutorials

* [postgresql-json](http://www.postgresqltutorial.com/postgresql-json/)

## data with expiration date

There is no built in expiration feature but if your goal is to automatically expire fields and have the logic contained 
within your database (and thus no outside dependency like a cron job) then you can always write a trigger. 

Below is an example of a trigger that deletes rows from a table that have a timestamp of older than 1 minute. 
It is executed whenever a new row is inserted into that same table. 
You can obviously set the trigger to execute on other conditions and for various expiration dates as need be. 
I used the following website as a basis for this: http://www.the-art-of-web.com/sql/trigger-delete-old/

```sql
CREATE TABLE expire_table (
    timestamp timestamp NOT NULL DEFAULT NOW(),
    name TEXT NOT NULL
);

INSERT INTO expire_table (name) VALUES ('a');
INSERT INTO expire_table (name) VALUES ('b');
INSERT INTO expire_table (name) VALUES ('c');

select * from expire_table;
         timestamp          | name 
----------------------------+------
 2014-09-26 15:33:43.243356 | a
 2014-09-26 15:33:45.222202 | b
 2014-09-26 15:33:47.347131 | c
(3 rows)

CREATE FUNCTION expire_table_delete_old_rows() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
BEGIN
  DELETE FROM expire_table WHERE timestamp < NOW() - INTERVAL '1 minute';
  RETURN NEW;
END;
$$;

CREATE TRIGGER expire_table_delete_old_rows_trigger
    AFTER INSERT ON expire_table
    EXECUTE PROCEDURE expire_table_delete_old_rows();

INSERT INTO expire_table (name) VALUES ('d');

select * from expire_table;
         timestamp          | name 
----------------------------+------
 2014-09-26 15:36:56.132596 | d
(1 row)
```
