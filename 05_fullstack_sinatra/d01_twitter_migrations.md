## 5.1 SQL: Twitter Migrations

Below is an example of a `migrations.sql`. It models out **Twitter**.

#### Comments

* **SQL keywords**: UPPER CASE
* **names (identifiers)**: lower_case_with_underscore
* `#comments in sql`
* You create a table via stating create table!
* You then give it a name in *snake_case*
* You then have a set of *parameters* inside of `()`
* Inside you `declare_name SQLTYPE()` for *names* of things and the *SQL datatype*
* Example:
* `CREATE TABLE some_table_name_snake_case (id SERIAL PRIMARY KEY, some_value varchar(255));`

#### Example

```sql
#1 create db
CREATE DATABASE twitter;

#2 connect to db
\c twitter

#3 create tables
CREATE TABLE users (id SERIAL PRIMARY KEY, name varchar(255), password varchar(255), email varchar(255));

CREATE TABLE tweets(id SERIAL PRIMARY KEY, user_id integer, tweet varchar(140));
```

#### Adding A New Feature!

1. The fine folks at Twitter want *you* to add a new feature to their platform!
2. You are to add `targeted_ads` to their platform!
3. `targeted_ads` has a few properties...
  - A primary key
  - A string value of `ad_name`
  - A string value of `ad_text`
  - A numerical value of `total_unique_views`
4. Add this table to your `migrations.sql` after testing to verify it works!

#### Oh snap! It is a hit! Time to add another feature!

1. Twitter now wants to support emoji!
2. You are to add `emoji` to their platform!
3. `emoji` has a few properties...
  - A primary key
  - A string value of `emoji_name`
  - A string value of `emoji_value`
  - A numerical value of `total_uses_of_all_time`
  - A Boolean value of `is_enabled`... for those seasonal emoji!
4. Add this table to your `migrations.sql` after testing to verify it works!
