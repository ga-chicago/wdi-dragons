## Full Stack from scratch

*Time for us to build a guide.... a comprehensive guide to building a full stack MEAN app from scratch.*


#### Starting My App

* `npm init` to initialize my application!
* Generate an Express app using `express --css less --hbs` (using Handlebars)
* `npm install` to install Node module dependencies
* Verify app works! `npm start` OR `nodemon` to run the app
* Browse to `localhost:portnumber` to verify it runs

#### Setting up a database

* If we want sample data (such as a seed file) we can import JSON directly into MongoDB using the `mongoimport` command.
* Start `mongod` as root (`sudo mongod`) otherwise we can't communicate back and forth to MongoDB with Mongoose. Do this after importing data.
* If I don't have any starting data, Mongo will automatically create a collection + database on connection and query.
* We need an ORM for MongoDB.... that is **Mongoose**
* `npm install mongoose --save` to install Mongoose in my project!
* We need a few folders to store important information about our database:
  - `db/`
  - `models/`
* The db folder contains the `database.js` connection file. It also contains JSON for seed data if it exists.
* Need a connection string + connect using Mongoose (`mongoose.connect`)
* In our database.js, we need to listen for Mongo...
  - connected
  - disconnected
  - error
* The models folder contains a Schema (aka Model definition) for each collection.
* `require('./db/database')` in your `app.js` to connect to your db for the app!


#### Serving Our Data!

* Routers and Controllers can be synonymous
* Our `routers` folder will contain individual routers.
* The default two: `index.js` and `users.js`
* I want to make a new router. I call it `routers/something.js`
* I need to `var nameOfRouter = require('./routers/something');`
* Ok, now it is time to map it to a resource, aka `localhost:3000/something/`
* `app.use('/resourceurl', nameOfRouterVariable)`
* That would map to `localhost:3000/resourceurl`
* Now, I need to add routes to my router... how do I do that?
* In my individual router file, I need to `router.httpVerb(...)`
  - router.get
  - router.post
  - router.patch
  - router.put
  - router.delete
* I can respond with 3 different things!
  - `res.send('a string of text')`
  - `res.json(someObjectToTurnToJSON)`
  - `res.render('nameOfView', {dataObjectToUseOnPage})`

#### Models
* required to be in that models folder.
* Each model represents a collection!
* Each model needs to `require('mongoose')` so it can talk to the ORM
* Each model also needs to define a `mongoose.Schema`... this allows us to...
  - Blueprint data
  - Assign data types to keys
  - Minor data type validation
  - Even require certain keys have values
* Export `mongoose.Model('NameOfModel', schema, optionalCollectionNameLikeSelf.table_name)`
