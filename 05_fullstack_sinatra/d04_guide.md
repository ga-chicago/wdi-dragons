## 5.4 Sinatra Walkthrough guide

#### Database Design

* We're going to draw out ERD (Entity Reference Diagrams)
* Create a `db\migrations.sql` file.
  - `CREATE DATABASE`
  - `\c db_name`
  - `CREATE TABLE`
* Populate database with test OR production data. We do this with a `db\seed.sql` file.
  - Lots of `INSERT INTO` statements!

#### Creating a Sinatra Application

* We need 3 files, right?
* `app.rb`, `config.ru`, `Gemfile`

#### Adding Models

* Create a model!
* `models\name_of_model.rb`
* Now, require it in our `config.ru`

#### Project Code

* https://github.com/code-for-coffee/chicago-recommendations

#### Videos

* Part One: https://youtu.be/gKg0IpFKtOg
* Part Two: https://youtu.be/dzxzemDg8GY
* Part Three: https://youtu.be/wkwHV6x-UlA
