## Binding Backbone to an API

#### Getting Started

1. First, we need to include all of our resources - jquery, underscore, backbone.js.
2. We also need a RESTful API. This can be from any framework.
3. We'll need to specify 4 different things:
  - *Collection*: a special array of Models; each model corresponds to a *document* or *table row* in a database. The collection corresponds to a Collection or Table in a database. These will be rendered as parent DOM elements (ol, ul, section).
  - *Model*: Individual models that represent the documents or rows of a table. These will be rendered as children DOM elements (li, article).
  - *CollectionView*: This view is what will render our Collection. `<ul>`, `<section>`
  - *ModelView*: This view is what will render our Model. `<li>`, `<article>`
4. We then need to define individual templates for both the ModelView and CollectionView. When putting these together, ask yourself: 'What should this look like in HTML?'
5. We can then define a basic Backbone application.
6. Note! If you need to support MongoDB in your application, use `Backbone.Model.idAttribute = "_id;"`
7. Add a `$(document).ready` event.

#### Code So Far

```javascript
// namespace
var app = app || {};
var active = active || {};

// define my 4 important parts!
app.Collection = Backbone.Collection.extend({

});

app.Model = Backbone.Model.extend({

});

app.CollectionView = Backbone.View.extend({

});

app.ModelView = Backbone.View.extend({

});

// mongoDB support!
Backbone.Model.idAttribute = "_id";

// the document is ready
$(document).ready(function(){

});
```

#### Our View

```html

<section id='pancake-listing'>
  <h2>Pancakes Listing</h2>
</section>

<!-- defining an underscore.js template -->
<script type='text/template' id='recipe-template'>
<article>
  <strong>Ingredients</strong>: <%= ingredients %><br>
  <strong>Type</strong>: <%= type %><br>
  <strong>Topping</strong>: <%= topping %><br>
  <strong>Syrup</strong>: <%= syrup %><br>
  <strong>Instructions</strong>: <%= instructions %><br>
  <strong>Time</strong>: <%= time %><br>
</article>
</script>

<!-- loading custom app -->
<script src='/javascripts/app.js'></script>
```

#### Skeleton of How Backbone Renders

```javascript
// namespace
var app = app || {};
var active = active || {};

app.Model = Backbone.Model.extend({
});

// define my 4 important parts!
app.Collection = Backbone.Collection.extend({
  model: app.Model, // what type of models will this collection hold?
  url: '/api',
  initialize: function() {
    var self = this;
    this.on('change', function() {
      console.log('Our Collection changed.');
      var view = new app.CollectionView({
        collection: self
      });
    });
    this.on('sync', function() {
      console.log('Our Collection synced with the API.');
      var view = new app.CollectionView({
        collection: self
      });
    });
    // get data from the API
    this.fetch();
  }
});

Backbone.Model.idAttribute = "_id";

app.CollectionView = Backbone.View.extend({
  el: $('#pancake-listing'),
  initialize: function() {
    console.log('CollectionView is a go.');
    // when loaded, let us render immediately
    this.render();
  },
  render: function() {
    console.log('CollectionView is rendering.');
    // we expect our CollectionView to be bound to a Collection
    var models = this.collection.models;
    for (var m in models) {
      new app.ModelView({
        model: m
      });
    }
  }
});

app.ModelView = Backbone.View.extend({
  initialize: function() {
    console.log('ModelView instantiated and awaiting orders, sir');
    this.render();
  },
  render: function() {
    console.log('ModelView rendering.');
  }
});

// mongoDB support!
Backbone.Model.idAttribute = "_id";

// the document is ready
$(document).ready(function(){
  active.collection = new app.Collection();
});
```

#### Final Product

```javascript
// namespace
var app = app || {};
var active = active || {};

app.Model = Backbone.Model.extend({
});

// define my 4 important parts!
app.Collection = Backbone.Collection.extend({
  model: app.Model, // what type of models will this collection hold?
  url: '/api',
  initialize: function() {
    var self = this;
    this.on('change', function() {
      console.log('Our Collection changed.');
      var view = new app.CollectionView({
        collection: self
      });
    });
    this.on('sync', function() {
      console.log('Our Collection synced with the API.');
      var view = new app.CollectionView({
        collection: self
      });
    });
    // get data from the API
    this.fetch();
  }
});

Backbone.Model.idAttribute = "_id";

app.CollectionView = Backbone.View.extend({
  el: $('#pancake-listing'),
  initialize: function() {
    console.log('CollectionView is a go.');
    // when loaded, let us render immediately
    this.render();
  },
  render: function() {
    console.log('CollectionView is rendering.');
    // we expect our CollectionView to be bound to a Collection
    var models = this.collection.models;
    for (var m in models) {
      new app.ModelView({
        model: models[m],
        el: this.el
      });
    }
  }
});

app.ModelView = Backbone.View.extend({
  initialize: function() {
    console.log('ModelView instantiated and awaiting orders, sir');
    this.render();
  },
  render: function() {
    console.log('ModelView rendering.');
    var data = this.model.attributes;
    console.log('Grabbing template...');
    var template = $('#recipe-template').html();
    console.log('Transforming template...');
    var compileTpl = _.template(template);
    console.log('Creating HTML from template and model data...');
    var html = compileTpl(data);
    console.log('Rendering to page...');
    this.$el.append(html);
    // vanilla - this.el.innerHTML = this.el.innerHTML + html;
  }
});

// mongoDB support!
Backbone.Model.idAttribute = "_id";

// the document is ready
$(document).ready(function(){
  active.collection = new app.Collection();
});
```
