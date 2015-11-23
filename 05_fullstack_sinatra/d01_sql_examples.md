## 4.2 SQL Examples

```sql
# create a table
CREATE TABLE students(id SERIAL PRIMARY KEY, name varchar(255), email varchar(255));

# insert new rows into a table
INSERT INTO students (name, email)
VALUES
('James', 'jamest@ga.co');

# select all rows from a table
SELECT * FROM students;

# querying... or finding
SELECT * FROM students WHERE id = 1;
SELECT * FROM students WHERE name = 'James';
```
