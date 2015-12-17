## 7.4 Express.js (Sinatra for Node)

**Express**: http://expressjs.com/


### 1. Your First Express project

We're going to build an API in Express as well as render a View (similar to Ruby's MVC pattern).

If you haven't created an `app.js` file, go ahead and do so.

####Let's build our first API

Inside of your `app.js`, we're going to...

```javascript
// require express and use it
var express = require('express');
var app = express();

// create some JSON to send to a user
var data = {
  "message": "It.. is... alive!",
  "description": "your very first express API call"
};

// setup a 'get' route... JS version of sinatra!
app.get('/', function(req, res){
  res.send(data);
});

// setup a 'post' route.. again, look familiar?
app.post('/', function(req, res){
  res.send({
    "message": "thanks.. you've sent me some useful data"
  });
  console.log(req);
});

app.listen(3000);
console.log("Your Express app is running...")
```

### 2. Request object (body, params, and query)

The **request** object (seen as `req`) contains `body`, `params`, and `query` objects.

Install body-parser: `npm install body-parser --save`

To parse the `body` (where all data is sent via $.ajax and POSTMAN), we need to include the following Node Modules:

```javascript
// include the body-parser module so we can see inside of req.body
var bodyParser = require('body-parser');
app.use(bodyParser.json()); // support json encoded bodies
app.use(bodyParser.urlencoded({ extended: true })); // support encoded bodies
```

Now we can appropriately read data from query strings, the request body, and params. Let's modify our above API route to read from the request body.

```javascript
// create an API 'post' route.. let's look at the different sets of data we can get back
app.post('/api', function(req, res){
  res.send({
    "message": "thanks, " + req.body.name + ".. you've sent me some useful data"  
  });

  // we'll log out the params, body, and query objects here for you to see what is inside
  console.log("req.params");
  console.log(req.params);
  console.log("req.body");
  console.log(req.body);
  console.log("req.query");
  console.log(req.query);

});
```

```javascript
// create another 'post' route that accepts 'params'
// this would look like... http://localhost:3000/items/42
app.post('/api/items/:id', function(req, res) {
  console.log(req.params);
  res.send("Your item #" + req.params.id + " is not in stock :(... womp womp");
});
```

We can test out our `post` routes using an Ajax call:

**Sending over data to the request.body**
```javascript
$.post( "/api", { name: "James"}, function( data ) {
  console.log(data);
});
```

**Sending over data using request.params**
```javascript
$.post( "/api/items/42", { item: "Hitchhiker's Guide to the Galaxy"}, function( data ) {
  console.log(data);
});
```

### 3. Generating an Express project

We're going to use the *Express* Generator to create an application. While the Express framework is lean and lightweight compared to Ruby on Rails, there are a few application settings that you can use.

The Express Generator allows you to easily choose which CSS preprocessor you'd like to use as well as which template framework you'd like to use.

You use the Express generator in a new folder (we're going to use whichever folder you created in the first part of this walkthrough). The syntax is as follows:

```bash
express --css preprocessor_name --template
```

####Pre-processors
Express supports two out-of-the-box pre-processors:
- LESS (http://lesscss.org/) - Similar to Sass; one major difference is variable declaration (`$colour` vs `@colour`)
- Stylus (https://learnboost.github.io/stylus/): Robust, Ruby-like syntax

*Usage*:
```bash
express --css less
express --css stylus
```

####Template Frameworks
Express supports the following template frameworks out of the box:
- Jade (default; all projects use this unless specified otherwise)
  - http://jade-lang.com/
  - Ruby-like syntax; similar to Stylus
- EJS (embedded Javascript)
  - http://www.embeddedjs.com/
  - Very similar to ERB
  - Familiar to Underscore
  - **We're using this in class!**
- Hogan
  - http://twitter.github.io/hogan.js/
  - Similar to Handlebars, Mustache, Angular
  - Similar to Twig/Smarty from PHP
- JSHTML
  - http://james.padolsey.com/cool-stuff/introducing-jshtml/
  - Sort of spaghetti-code like
  - Uses comments to create UI elements

*There is a node_module that supports other frameworks like Handlebars...*: https://www.npmjs.com/package/consolidate

*Usage*:
```bash
express --css less # uses jade
express --css stylus --ejs # uses EJS
express --css stylus --hogan # uses EJS
express --css stylus --jshtml # uses EJS
```

Now, we need to organize our application to make sense. We're going to open the project and move some folders around as well as create some.

### 4. Rendering a View

We need to install and save the EJS view engine as a dependency of our project:
`nopm install ejs --save`

Next, we'll include the ability to read files via the path:

`var path = require('path');`

Now, we'll tell our application to use the EJS view engine and where to look for View files:

```javascript
app.set('views', path.join(__dirname, 'views'));
// use the EJS view engine
// make sure you npm install ejs --save first!
app.set('view engine', 'ejs');
```

**Working Example**

```javascript
// include the path reader... we need this to read files
var path = require('path');

// view engine setup
// set to look for views inside of "/views"
app.set('views', path.join(__dirname, 'views'));
// use the EJS view engine
// make sure you npm install ejs --save first!
app.set('view engine', 'ejs');

// render an index file... (/views/index.ejs)
app.get('/', function(req, res, next) {
  res.render('index', { title: 'Stuff', message: "Hi friends. Let's send some data to Express using Ajax!" });
});
```

**A sample EJS View**
`/views/index.ejs`
```javascript
<!DOCTYPE html>
<html>
  <head>
    <title><%= title %></title>
  </head>
  <body>
    <h1><%= title %></h1>
    <p><%= message %></p>
  </body>
</html>

```

Now, when you browse to `http://localhost:3000` you should see a welcome page!

### 5. EJS Overview
- http://www.embeddedjs.com/
- https://www.npmjs.com/package/ejs

- Supports many Ruby on Rails like helpers: https://code.google.com/p/embeddedjavascript/wiki/ViewHelpers
- Should look and feel just like ERB.

####Template Syntax
A conditional statement:
```javascript
<% if (user) { %>
  <h2><%= user.name %></h2>
<% } %>
```

####Compiling Teplate/Using
```javascript
// declare template (str: string template)
var template = ejs.compile(str, options);
template(data);
// => Rendered HTML string

ejs.render(str, data, options);
// => Rendered HTML string
```

####Images
```javascript
<%= img_tag('maid.jpg') %>
```

####Loops
```javascript
<h1><%= title %></h1>
<ul>
    <% for(var i=0; i<supplies.length; i++) { %>
        <li>
            <a href='supplies/<%= supplies[i] %>'>
                <%= supplies[i] %>
            </a>
        </li>
    <% } %>
</ul>
```


### 6. Express.js Recap/Sinatra Comparison


### GET requests in Express

```javascript
app.get('/api', function(request, response) {

  // stuff happens

});
```

#### Sending Data

```javascript
app.get('/api', function(request, response) {

  var someData = {
    description: "I am really tired",
    message: "zzzZZZZzzzz"
  };

  response.send(someData);

});
```

```ruby
get '/api' do
  someData = { description: "I am really tired", message: "ZzzzZZzzz"}
end
```

#### Rendering Views

```javascript
app.get('/', function(request, response) {

  var someData = {
    description: "I am really tired",
    message: "zzzZZZZzzzz"
  };

  // template name, data to use with template
  response.render('nameOfMyView', someData);

});
```

```ruby
get '/api' do
  someData = { description: "I am really tired", message: "ZzzzZZzzz"}
  erb :nameOfMyView
end
```

### POST requests in Express

```javascript
app.post('/api/givemeallyourinfo', function(request, response) {

  // request.body, request.query, request.params
  response.send({
    "status": "200",
    "message": "Thanks.. we got all your info"
  });

});
```

```ruby
post '/api/givemeallyourinfo' do
  {
    "status": "200",
    "message": "Thanks.. we got all your info"
  }
end
```


### POST with Params

```javascript
// localhost:5000/api/people/42/james
app.post('/api/people/:id/:name', function(request, response) {

  var id = request.params.id; // :id  => 42
  var name = request.params.name; // :name  => james
  response.send("You've requested #" + id + "!");

});
```
