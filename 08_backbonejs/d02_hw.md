## Homework

#### 1. Bootflix

Complete the [Bootflix](https://github.com/ga-chicago/bootflix) project. You should **fork this repository** and work in it. To submit, create a Pull Request in `WDI_Chi_Dragons` under the Backbone folder with a link to your repository. This will expose you to working with existing assets and code.

#### 2. Backbone Studying with the Animals API

* *Take a look at the Backbone.js code...*
* What is going on here?
* What happens when our page loads?
* Maybe annotate your source code?
* Here is the full API if you want to play around: https://github.com/ga-chicago/animals_api

```javascript
var app = {};
app.AnimalModel = Backbone.Model.extend({});
app.AnimalCollection = Backbone.Collection.extend({
  model: app.AnimalModel,
  url: '/api/animals'
});
app.AnimalView = Backbone.View.extend({
  initialize: function(){
    this.listenTo(this.model, 'change', this.render);
  },
  tagName: 'div',
  className: 'animal-home',
  template: _.template( '<h2><%= name %></h2><p><%= description %></p><button>Feed</button>' ),
  events: {
    'click button': 'feedAnimal'
  },
  feedAnimal:function(){
    var name = this.model.get('name');
    alert(name + ' says "Yum Yum Yum"');
  },
  render: function(){
    var data = this.model.attributes;
    this.$el.html( this.template( data ) );
  }
});
app.AnimalListView = Backbone.View.extend({
  initialize: function(){
    this.listenTo(this.collection, 'sync', this.render);
  },
  render: function(){
    this.$el.empty();
    var models = this.collection.models;
    for(var i=0; i < models.length; i++){
      var singleAnimal = models[i];
      var singleView = new app.AnimalView({model: singleAnimal});
      singleView.render();
      singleView.delegateEvents();
      this.$el.append( singleView.$el );
    }
  }
});
var animals = new app.AnimalCollection();
var animalPainter;
$(document).ready(function() {
  animalPainter = new app.AnimalListView({
    collection: animals,
    el: $('#animals-container')
  });
  animals.fetch();
});
```

#### 3. Express.js Reps

- Create a new folder called `ExpressAPI`
- Create an API in Express that serves `get` requests.
- Render three routes using the **GET** request [`'/api/books'`, `'/api/foods'`, `'/api/music'`]
- Create three Javascript Objects to send back
- Serve these Models in your API
- Test this API using Postman. Use the Mac Grab app to provide screenshots.
- Post a screenshot in our Slack channel.


#### 4. Research Tools and Frameworks

During your downtime, let's research a few things. Here is a list to get you started.

##### HTML & CSS Frameworks
- [Bootstrap](http://getbootstrap.com/)
- [Foundation](http://foundation.zurb.com/)
- [Materialize](http://materializecss.com/)
- [Skeleton](http://getskeleton.com/)

##### Web App (MV*)
- [AngularJS](https://angularjs.org/)
- [BackboneJS](http://backbonejs.org/)
- [ReactJS](http://facebook.github.io/react/)
- [EmberJS](http://emberjs.com/)
- [MeteorJS](https://www.meteor.com/)

##### Visualization & Animations
- [D3JS](http://d3js.org/)
- [ThreeJS](http://threejs.org/)
- [FamousJS](http://famous.org/)
- [VelocityJS](http://julian.com/research/velocity/)

##### Testing
- [JasmineJS](http://jasmine.github.io/)
- [MochaJS](https://mochajs.org/)
- [RSpec](http://rspec.info/)

##### Web App to Native App
- [PhoneGap](http://phonegap.com/)
- [RubyMotion](http://www.rubymotion.com/)

##### [Microsoft Universal Apps](https://msdn.microsoft.com/en-us/library/windows/apps/Dn726767.aspx)


##### Task Handlers
- [Grunt](http://gruntjs.com/)
- [Gulp](http://gulpjs.com/)
- [Task-Manager](https://github.com/menglifang/task-manager)

##### [Web Components](https://www.youtube.com/watch?v=fqULJBBEVQE&feature=youtu.be)
- [Polymer](https://www.polymer-project.org/1.0/)
- [X-Tags](http://x-tags.org/)

##### Other Languages
- Java
- Asp.NET
- C#
- PHP
- Like... hundreds more
