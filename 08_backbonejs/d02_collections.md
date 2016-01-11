## Bind a RESTful API in real time to a Collection

### Discuss binding to RESTful APIs

Q: Wouldn't it be nice if we could automatically bind data to the APIs we've been building?

Q: If you could write a really, really simple way to work with an entire API, how would you?

### Describe Collections (5min)

- Imagine being able to communicate directly to an API
- A list of models for each entry in an API
- A... list.... a... COLLECTION
- A collection is the actual Backbone of Backbone.js
- A collection of models; each model is like a vertabrae
- I'm going to show you what a collection can do.

### I DO - Walk through collections (and record video) (15min)

```javascript
// create a model for each individual card
var card = Backbone.Model.extend({
    initialize: function(){
        console.log("Hey, a Card Model (no." + this.get("id") + ") was just created!");
        // fetch from the server
        this.fetch();
    }
});

// now, create a list.. a collection of them!
var cardList = Backbone.Collection.extend({
    model: card,
    url: "/api/cards",
    initialize: function() {
        console.log("Collection is a go!");
    }
});

// create a new instance of the list
var list = new cardList();

// get data from our API
list.fetch();

// create will create a new item on the API
list.create({
    title: "Hello", message: "from backbone.js!"
});

// refresh postman
list.create({
    title: "Good morning!", message: "Your cat says meow."
});

// refresh postman
list.create({
    title: "Weather", message: "It is currently 32C outside."
});

// find models that have a title of where
list.where({title: "Hello"});

// or by id
list.at(1);

list.pop({title: "pop pop", message: "community "});

list.push({title: "falcon punch", message: "woot"});

// if I don't like a model, I can destroy it and delete it
var model = list.at(0);
model.destroy();

// or if I just want to update a model, I can do that too
var anotherModel = list.at(1);

// I'm going to update the title
anotherModel.set("title", "I'm updated! awesome");

// and now sync my changes back to the api
anotherModel.sync();
```
