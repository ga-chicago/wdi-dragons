
## The Mongoose ORM

**Mongoose** connects our *application* to our MongoDB *database*. To add it as a dependency to our project, we just need to install it as follows:

`npm install mongoose --save`

Now, create a new folder in your project called `models`. Then, create a file called `db.js` -- this is where we're going to store our database specific files. *No actual models* will be in this file. Inside of our `db.js` file, we're going to require **Mongoose**:

`var mongoose = require('mongoose');`

**Connect to Mongo using Mongoose**
```javascript
// mongodb://username:password@localhost:27027/database-name
var connectionString = 'mongodb://localhost/test';

// connect to database
mongoose.connect(connectionString);
```

*Connect Error?* If you are getting a connection error, you may need to replace "localhost" with 127.0.0.1.

### Mongoose Events
These events tell us the status of our connection to MongoDB; this are *VITAL* to debugging.
- **connected**: connected to database
- **error**: an error has occured with the database
- **disconnected**: the connection to the server has been terminated

*Example*
```javascript
mongoose.connection.on('connected', function () {
  console.log('Mongoose connected to ' + connectionString);
});
mongoose.connection.on('error',function (error) {
  console.log('Mongoose connection error: ' + error);
});
mongoose.connection.on('disconnected', function () {
  console.log('Mongoose disconnected!');
});
```

### Including Your Database in your application
In your primary `app.js` file, we need to include our `/models/db.js` file. This will establish our connection to our database.

*app.js*
```javascript
// include mongodb via /models/db.js
require('./models/db');
```

## 4. "Documents", Schemas, and Models

MongoDB stores data in each database as **documents**. These documents are stored as **BSON**; this is just _binary_ JSON data. The tool that we're using to communicate with Mongo - **mongoose** takes this BSON data and turns it into JSON for our ease of use. *One of the primary advantages of using MongoDB with Javascript is that everything is essentially a Javascript object!*

Each time you create a **document** in MongoDB, it is given an
`_id`. MongoDB automatically creates this when each document is created and assigns it a unique ObjectId value. It can be considered the *primary key* of your Document.

#### Schema Data Types
MongoDB allows the following *schema* types inside of a `document`:
- String
- Number
- Date
- Boolean
- Buffer (binary information such as images and video)
- Mixed (mixed data)
- Array (arrays of the same data type *or* an array of nested sub-documents)
- ObjectID (used with `_id`)

### Building a Model with a Schema
Let's create a new file: `/models/tasks.js`; the following Schema will be placed inside of there.

We now need to model some data. For example, say we have a list of tasks we'd like to complete. We're going to store our **tasks** as documents in MongoDB. A task as a Javascript object would look like:

```javascript
var task = {
  name: "My task",
  description: "This is something I need to do",
  completed: false
};
```

We can use the `mongoose.Schema({});` method to create a schema.

```javascript
// require mongoose
var mongoose = require('mongoose');

var TaskSchema = new mongoose.Schema({
  name: String,
  description: String,
  completed: Boolean
});
```
Notice how we're declaring the *type* of data stored in the object. Say we want to have a default value, though. When you create a task, it is not completed yet, no?

```javascript
// require mongoose
var mongoose = require('mongoose');

var TaskSchema = new mongoose.Schema({
  name: String,
  description: String,
  completed: {type: Boolean, "default": false }
});

// export our Model for use in our node app// export!
module.exports = mongoose.model('Task', TaskSchema);
```
We put the word `default` in quotes because it is a reserved word in Javascript. All we've changed is adding a `default` value as well as specifying a `type` (based on what is allowed in the Schema).

Finally, to make our actual MVC-esque **model**, we need to tell Mongoose to create a model:

`var Task = mongoose.model('Task', TaskSchema);`
Where we declare `Task` as the new model name and assign a schema to this model.

## 5. Mongoose Query Methods

- `find`: General search based on a supplied query object
- `findById`: Look for a specific ID
- `findOne`: Get the first document to match the supplied query
- `geoNear`: Find places geographically close to the provided latitude and longitude
- `geoSearch`: Add query functionality to a geoNear operation

## 6. MongoDB CRUD

```javascript
var mongoose = require('mongoose');
var Task = require('../models/Tasks');

// get ALL items in an array
Task.find(function (err, tasks) {
  console.log(tasks)
});

// create an item
Task.create({ name: "task #1", description: "a simple task"}, function (err, task) {
  console.log(task);
});

// get a specific item by _id
Task.findById(id, function (err, task) {
  console.log(task);
});

// update a task by _id
Task.findByIdAndUpdate(id, { description: "updating this" }, function (err, task) {
  console.log(task);
});

// delete by _id
Task.findByIdAndRemove(id, { params: "object stuff" }, function (err, task) {
  console.log("Deleted:");
  console.log(task);
});
```
