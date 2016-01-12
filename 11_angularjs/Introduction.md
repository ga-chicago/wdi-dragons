
## An Introduction to AngularJS

**AngularJS**: https://angularjs.org/

#### 1. Setting up your application

We need to include Angular.js in our project. We can install it using npm!

`npm install angular --save`

This will download all of the files associated with Angular.js and save it to our `package.json` file. Angular is installed to `node_modules/`

It will include:
```bash
node_modules/angular on master[!]
$ tree
.
├── README.md
├── angular-csp.css
├── angular.js
├── angular.min.js      # <-- use for production!
├── angular.min.js.gzip
├── angular.min.js.map  # <-- include in same directory as angular.min.js
├── bower.json
├── index.js
└── package.json
```

From the root of our project's repository, we can copy the required files over using the `cp` command.
`cp -r node_modules/angular/angular.min.js public/javascripts`
`cp -r node_modules/angular/angular.min.map public/javascripts`

- Now, we need to open whichever view we want to include Angular in. For our case, we're going to create a new *route* in our `routes/index.js` file:

```javascript
router.get('/angular', function(req, res, next) {
  // response: render the '/views/angular.ejs' template and
  // give it the data of { title: 'Tasker', library: "Angular"}
  res.render('angular', { title: 'Tasker', library: 'Angular' });
});
```

- Create a new EJS view: `/views/angular.ejs`
- Copy the contents of `/views/index.ejs` into `/views/angular.ejs`
- Include Angular in your `<head>`: `<script type="text/javascript" src="/javascripts/angular.min.js"></script>`
- Make sure you include this **after** jQuery!
- Specify where to add your `ng-app`
- `<div ng-app="myApp">..</div>`
- This allows us to *claim* all code inside of this element will be **owned** by Angular.

####Testing.. Testing.. 1..2..3..

Inside of your `/views/angular.ejs` view, let's add some content.

```html
<section class="container">
  <article class="row">
    <div class="col-md-12">
      <h1><%= title %></h1>
      <h4>Using <%= library %></h4>
      <p><em>Not yet implemented!</em></p>
    </div>
  </article>
</section>
```

Let's let **Angular** do some work on the front end.
This will be what is considered the Angular **view** (in their MVC structure).

```html
<section class="container">
  <article class="row">
    <div class="col-md-12">
      <h1><%= title %></h1>
      <h4>Using <%= library %></h4>
      <h3>{{'AngularJS lets us ' + 'DYNAMICALLY ' + 'render data on a page!'}}</h3>
    </div>
  </article>
</section>
```

#### 2. Dat Angular Template Syntax

Let's take a look at Angular's template syntax. If you're familiar with Handlebars, Hogan, or Mustache this will look semi-familiar:

```javascript
// {{ ALL OF MY CONTENT GOES IN BRACES! HUGGED BY BRACES! }}
{{'AngularJS is up in here'}}
// Whoa - I can evaluate expressions.
{{ 6 * 7 }}
// I'm able to concatenate strings inside of a template, too!
{{'AngularJS lets us ' + 'DYNAMICALY ' + 'render data on a page!'}}
```

#### 3. Angular's MVC

- Angular follows an MVC pattern. It has distinct *views*, *models*, and *controllers*.
- They're supported by:
  - Dependency injection
  - Directives
  - Resources
  - Factories
  - Other modules!
- Angular's magic is in these tools.
- Otherwise we'd just be working with Backbone or plain EJS.
