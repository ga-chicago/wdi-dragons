## 5.4 Q&A - Models and SQL

*We're going to start by taking some questions on Models and SQL. We'll answer your questions and write them here along with the answers!*


#### Table Names in SQL

* Should be plural! :)
* `yelp_reviews`

#### What is a Migrations file?

* It is a general SQL file
* Contains how to CREATE database, connect to database, and CREATE tables.
* Meant for re-use in deploying and creating databases and tables on any computer
* Located in `db\migrations.sql`

#### What is a seeding file?

* Seeding file (`db\seed.sql`) is designed to populate a database with dummy or test data
* In production environments, we use real data.
* LOTS of `INSERT INTO` statements.

#### What is ActiveSupport (in relation to ActiveRecord)?

* It is a set of tools bundled into a library of classes.
* Written for Rails 3.
* ActiveSupport allows ActiveRecord to talk to Rake commands.


#### What is the difference between ActiveRecord and Sinatra-ActiveRecord Gems?

* One gem is designed 100% with Sinatra in mind.
* One gem is for Rails only.
* When using Rake for Sinatra, we need ActiveRecord to communicate for lost functionality in Sinatra-ActiveRecord

#### Where does my database's information physically live?

* `/usr/local/var/postgres`
* Do not edit this at all!

#### Process for Setting up Databases on Servers

* Manually creating a database using a migration file.
* Populating that database with a seed file.
* OR use Rake, Gulp, or something similar.


#### What are naming conventions?

* SQL names should be in `snake_case`
* Models name should be `UpperCamelCase`
  - This is because Ruby classes are capitalized
* Binding a table to a name!
* `table_name` correlates to `TableName` in Ruby
* If this does not work and your table cannot be located....

```ruby
class TableName < ActiveRecord::Base
  #specify the actual table's name
  self.table_name = 'table_name'
  # snakesssss
  #self.table_name = 'snakeesss'
end
```

#### What is a migrations.sql file?

```sql
CREATE DATABASE some_name;
\c some_name
CREATE TABLE yelp_reviews;
```

#### ActiveRecord Class for this...

```ruby
class YelpReview < ActiveRecord::Base
end
```

#### Mapping a Table to ActiveRecord Naturally

* First, we create a table in some database.
* In our case, `yelp_reviews` is our table name.
* ActiveRecord Models should map up to the name of our table.
* For example...
* Our model will be called `YelpReview`
* If this does not work, use the `self.table_name` fix above.
* Models should not be plural
* ActiveRecord tries to map a singular model name to a plural (or singular) table name.

#### Reserved names

* These protect software from users
* Especially so nothing can internally be overwritten
* Google-fu reserved words (ie: `user`)

#### Naming Conventions

* Model `UserAccountsModel` (C#, Java, Django)
* Model `UserAccount` (Rails)

#### Naming Files

* Models should be `name_of_model.rb`
* For our `YelpReview` model...
* `yelpreview.rb`


#### ActiveRecord's SQL Counterparts

* http://guides.rubyonrails.org/active_record_querying.html


#### How to connect to a Database

*ActiveRecord*
```ruby
ActiveRecord::Base.establish_connection(
  :database => 'our_db_name',
  :adapter => 'postgresql'
)
Res.all
```
*Without ActiveRecord*
```ruby
require 'pg'
conn = PGconn.open(:dbname => 'test')
res  = conn.exec('SELECT 1 AS a, 2 AS b, NULL AS c')
res.getvalue(0,0)
```

#### Escaping Characters

To escape apostrophes within your string, just type another one before it. For example, `Doc B''s`
