## 5.4 Sinatra Walkthrough guide

#### Database Design

* We're going to draw out ERD (Entity Reference Diagrams)
* Create a `db\migrations.sql` file.
  - `CREATE DATABASE`
  - `\c db_name`
  - `CREATE TABLE`
* Populate database with test OR production data. We do this with a `db\seed.sql` file.
  - Lots of `INSERT INTO` statements!
