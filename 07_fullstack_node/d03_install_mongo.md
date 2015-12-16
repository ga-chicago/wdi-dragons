

___

## Introduction to NoSQL
<h3>MongoDB</h3>

---

**MongoDB**: https://mongodb.org/


## 1. Installing MongoDB

To install MongoDB, we need to install it and create a folder for the database.
We've provided an automated install script here: https://github.com/ga-chicago/MongoDBInstallScript/

*Annotated version of the script*
```bash
echo -e "*** Hi! This script will install MongoDB."
echo -e "You could be asked for your admin password up to four times."
# update homebrew
brew update
# use homebrew to install
echo -e "Installing MongoDB"
sudo brew install mongodb -Y
# create the mongodb swap directory
echo -e "Creating the MongoDB directory..."
sudo mkdir -p /data/db
# set read/write permissions for this directory to root
echo -e "Setting Permissions to the /data/* directory for MongoDB"
sudo chmod -777 /data/*
# start mongodb!
echo -e "Starting Mongod..."
sudo mongod
```

If you run into any problems during installation, please refer to this document: http://docs.mongodb.org/manual/tutorial/install-mongodb-on-os-x/

## 2. Starting MongoDB
To start mongodb, simply run the following command: `sudo mongod`. Use CTRL-C to stop the service.

## 3. Install Mongoose & Database Connection

**Mongoose** connects our *application* to our MongoDB *database*. To add it as a dependancy to our project, we just need to install it as follows:

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

#### Schema Types
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

## 7. RESTful API with MongoDB

In `app.js` we need to include additional files and dependencies. We also need to create a `routes/tasks.js` file to include. Go ahead and do that now.

In **app.js**, add the following:
```javascript
// require additional modules
var favicon = require('serve-favicon');
var logger = require('morgan');
var cookieParser = require('cookie-parser');
var bodyParser = require('body-parser');

// require mongodb & model
require('./models/db'); // db
require('./models/Tasks'); // model

// include route files in /routes
var routes = require('./routes/index');
var tasks = require('./routes/tasks');

// start express app
var app = express();

// we need to parse req.body.. so we add parsers
app.use(bodyParser.json());
app.use(bodyParser.urlencoded({ extended: true }));

// view engine setup
app.set('views', path.join(__dirname, 'views'));
app.set('view engine', 'ejs');

// uncomment after placing your favicon in /public
//app.use(favicon(__dirname + '/public/favicon.ico'));
app.use(logger('dev'));
app.use(bodyParser.json());
app.use(bodyParser.urlencoded({ extended: false }));
app.use(cookieParser());
app.use(require('less-middleware')(path.join(__dirname, 'public')));
app.use(express.static(path.join(__dirname, 'public')));

// define our http routes and bind those routes to routes in /routes
app.use('/', routes); // localhost:5000/
app.use('/api/tasks/', tasks); // localhost:500/api/tasks

```

Our **/routes/tasks.js** file will look just like this:

```javascript
var express = require('express');
var router = express.Router();

var favicon = require('serve-favicon');
var logger = require('morgan');
var cookieParser = require('cookie-parser');
var bodyParser = require('body-parser');

var mongoose = require('mongoose');
var Task = require('../models/Tasks');

/* GET /api/tasks listing. */
router.get('/', function(req, res, next) {
  console.log(req.body);
  Task.find(function (err, tasks) {
    if (err) return next(err);
    res.json(tasks);
  });
});

/* POST /api/tasks */
router.post('/', function(req, res, next) {
  console.log(req.body);
  Task.create(req.body, function (err, task) {
    if (err) return next(err);
    res.json(task);
  });
});

/* GET /tasks/id */
// http://localhost:5000/api/tasks/5566a21e1e3a211aa1c63495
router.get('/:id', function(req, res, next) {
  Task.findById(req.params.id, function (err, task) {
    if (err) return next(err);
    res.json(task);
  });
});

/* PUT /tasks/:id */
router.put('/:id', function(req, res, next) {
  console.log(req.body);
  Task.findByIdAndUpdate(req.params.id, req.body, function (err, task) {
    if (err) return next(err);
    res.json(task);
  });
});

/* PATCH /tasks/:id */
router.patch('/:id', function(req, res, next) {
  console.log(req.body);
  Task.findByIdAndUpdate(req.params.id, req.body, function (err, task) {
    if (err) return next(err);
    res.json(task);
  });
});

/* DELETE /tasks/:id */
router.delete('/:id', function(req, res, next) {
  console.log(req.body);
  Task.findByIdAndRemove(req.params.id, req.body, function (err, task) {
    if (err) return next(err);
    res.json(task);
  });
});

module.exports = router;
```
