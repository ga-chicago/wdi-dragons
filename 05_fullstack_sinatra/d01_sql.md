## 5.1 Structured Query Language (SQL)






#### Installing Postgres

<img src='http://postgresapp.com/img/PostgresAppIconLarge.png'>

1.  Run the command `brew install postgres`
2.  Let's install **Postgres.app**
3.  Move the app to your `/Applications/` directory.
4.  Now, double-click it to run it.
5.  Select **Open Postgres** in the bottom-right corner.




####  LIST ALL THE DATABASES!

* We've provided a cheatsheet of Postgres commands to help you out.
* First thing's first - let's see if we have any databases!
* We can list **all** databses using the following command:
* `\l`



#### Creating a database

* This is pretty straigtforward!
* Let's tell Postgres to create a database with a name!
* Syntax **matters**. Close each statement with a `;`
* `CREATE DATABASE vader;`
* Run the list command to see our new database!



#### Connecting to your database

* Time to connect to our database.
* We can do that with the following syntax:
* `\c databasename`
* In our case, `\c vader`
* We can't do anything inside of our DB until we connect to it.



#### Listing tables in a database

* To see a list of all tables in a database...
* Run the following command:
* `\dt`



####  Creating tables in a Database

* We specify to `CREATE TABLE name_of_table();`
* We pass in attribute names inside of the parenthases.
* `CREATE TABLE students (id SERIAL PRIMARY KEY, name varchar(255), email String);`
* Let's break this down...
* SERIAL PRIMARY KEY sets our Primary Key.
* We can now define the rest of our values using `attribute_name` with an associated `value_type`
* We organize them using commas to split them up.




#### Adding rows to a database

Check this syntax out:

```sql
INSERT INTO students (name, email)
VALUES
('Jimbo', 'jimbo@ga.co');
```

* We don't need to include a Primary Key.
* Why? Remember auto-incremement?
* When we add a new row we get an automatic ID!
* We just specify the attributes to add into.
* And then we specify the **Values**!



#### Selecting rows from a database

* We can select all the rows!
* We use the **SELECT** statement!

```sql
SELECT * FROM students;
```

* We can look for specific rows!

```sql
SELECT FROM STUDENTS WHERE id = 1;
```



#### Deleting rows from a database

* We use the **Delete** keyword!
* We can be specific like SELECT!


```sql
DELETE FROM students WHERE id = 1;
```

Nice, eh?



#### Migrations

Let's think about this. Wouldn't it be nice if we just had a script that we could copy/paste all of this into? Especially when we want to let a new user try our app out or run it on a server somewhere - having a script that can create our databses and tables for us is a *huge* win!

* We need to connect to SQL
* Create our database
* Create our tables
* How would we write this?
* Each command would be line-by-line



#### Migrations Lab

We're going to build do something fun!
