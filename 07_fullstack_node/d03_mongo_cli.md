## Mongo & Importing JSON to a Database

#### Console w/MongoDB

* To allow connections to your MongoDB database (such as applications needing to connect or Mongoose...), run `sudo mongod`. Think of it as `mongod` oversees **MongoDB**.
* To connect to the MongoDB terminal (similar to `psql`), enter the `mongo` command.

#### Console commands

* `help`: 	Show help.
* `db.help()`:	Show help for database methods.
* `db.<collection>.help()`:	Show help on collection methods. The <collection> can be the name of an existing collection or a non-existing collection.
* `show dbs`:	Print a list of all databases on the server.
* `use <db>`:	Switch current database to <db>. The mongo shell variable db is set to the current database.
* `show collections`:	Print a list of all collections for current database
* `show users`:	Print a list of users for current database.
* `show roles`:	Print a list of all roles, both user-defined and built-in, for the current database.
* `show profile`:	Print the five most recent operations that took 1 millisecond or more.
* `show databases`: No description needed.

#### Import JSON into a database

```bash
# mongoimport --db <databaseName> --collection <collectionName> <jsonFile.json> --jsonArray
mongoimport --db britney --collection songs britney.json --jsonArray
```

Only use the `-jsonArray` flag if you are importing an array of objects! Otherwise, you don't need it!
