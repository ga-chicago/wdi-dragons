## Swimclan Guide to Backbone.js

```javascript
// instafake.js
// the hip way to to be....
// namespaces for our application
/*===================================================================================================================================================
                    N A M E S P A C E S
===================================================================================================================================================*/
var instafake = instafake || {};
instafake.blueprints = instafake.blueprints || {}; // classes&constructors
instafake.active = instafake.active || {}; // instantied objects
​
​
// blueprints for models & collections
/*===================================================================================================================================================
                    S I N G L E  M O D E L  C O N S T R U C T O R
===================================================================================================================================================*/
instafake.blueprints.model = Backbone.Model.extend({ // A simple class constructor for single models (each individual photo)
  initialize: function() { //when an object of this class is instantiated by the collection it is initialized here
    console.log('a model is ready'); // simple console log statement tells us that the single model was instantiated.  Should see one of these for each data item that is in the collection
  }
});
​
/*===================================================================================================================================================
                    C O L L E C T I O N  C O N S T R U C T O R
===================================================================================================================================================*/
instafake.blueprints.collection = Backbone.Collection.extend({ // define a collection class
  url: '/api/instafake', // define the API endpoint that exposes the entire collection of models from the DB
  model: instafake.blueprints.model, // pointer to the single model class that is used to instantiate single models for all data in the DB
  initialize: function() { // run this function when a new collection of this class is instantiated
    console.log('a collection is ready'); // console log that the collection was instantiated (initialized)
    this.fetch(); // fetch the first entire collection of models when the collection is intantiated (on initialize, first fetch)
    this.on('change', function() { // set an event listener for collections of this class that will re-fetch whenever there is a change to the collection
      this.fetch(); //re-fetch whenever there is a change to the collection (new data is added, deleted or updated)
    });
  }
});
​
// CREATE (CRUD)
/*===================================================================================================================================================
                    C R E A T E  F U N C T I O N
===================================================================================================================================================*/
instafake.create = function(username, post, description, hashtags) { // need a helper function that is used via the submit button click on the DOM
  if (!username || !post || !description || !hashtags) { // check to make sure that all 4 fields are in the create call.  Throw error and exit function if not
    console.log('you are missing a parameter! oopsie'); // error message for the parameter check to console
    return false; // bail on the function and do not create anything in the DB if incomplete parameters
  }
  instafake.active.photosCollection.create({  // all is well, call the .create() method of collection object to add a new row to the DB
      username: username,  //username field for the new row
      post: post, // post field for the new row
      description: description, // description field for the new row
      hashtags: hashtags // hahtag field for the new row
  });
  return true; // nice thing to do, return true back to the caller so they know that all is well!!!  Good form.
};
​
​
// blueprints for views
// our collection view is sort of like a controller.. it is the * in MV*
/*===================================================================================================================================================
                    C O L L E C T I O N  V I E W  C O N S T R U C T O R
===================================================================================================================================================*/
instafake.blueprints.collectionView = Backbone.View.extend({ // A Collection View class constructor for displaying the entire collection
  initialize: function() { // initialize function that runs when this collection view is instantiated into an object
    this.$el = $('#instafakes'); // every view has a target DOM element (el).  Set it here and target the <tbody> element in the HTML <table>
    this.render(); // immediately call the render function of this view instance (see below in the "render:" ability) it will reset to blank
    var that = this; // save the context of this collection view so that it can be referred to inside other contexts like a "collection" object (remember we are in a "view" class constructor here)
    this.collection.on('sync', function() { // whenever there is a synchronize event in this view's collection
      that.render(); // render this collection view to keep it up to date with changing data (added, updated or deleted)
    }); // keep in mind that this view's collection is not set here.  It is passed in during instantiation below (in document.ready)
  =},
  render: function() { // this view's render ability that really just kicks modelView in the butt to make it display each data item to the table
    this.$el.html(''); // whenever the collection view is rendered it clears the table so no duplication occures as data changes
    var models = this.collection.models; // get all the data rows (models) out of the collection ready to iterate
    for (var m in models) { // iterate over all of the data rows (models)
      var data = models[m]; // just to keep it clean, temporarily store this individual data row (model) in a variable
      new instafake.blueprints.modelView({ // create an 'on the fly' model view instance to 'kick it in the butt' and make it render an item to the table
          model: data // pass the individual data row (model) to the model view instance so it displays the correct data!
      });
    }
  }
});
​
/*===================================================================================================================================================
                    S I N G L E  M O D E L  V I E W  C O N S T R U C T O R
===================================================================================================================================================*/
instafake.blueprints.modelView = Backbone.View.extend({ // The single model View class constructor.  Instances of this view are meant to display each individual row to the <tbody>
  initialize: function() { // when instantiated from the collectionView above (the kick in the butt), display item on the DOM!
    this.$el = $('#instafakes'); // this views 'el' is the <tbody> that will show the photos on the DOM
    this.template = _.template($('#table-row-template').html()); // pull in the underscore template that is the <tr> for each photo item.  Note that you can store it as an attribute of the view
    this.render(); // run the 'render' ability just below whenever a view of this class is instantiated (kicked in the butt)
  },
  render: function() { // this is the actual writing to the DOM!  When this ability is invoked (like in initialize above), draw the photo in question to the DOM
    var data = this.model.attributes; // set a temporary data variable which will contain the JS object of the photo's row data.  Note that 'model' attribute is passed in the instantiation above (the kick in the butt)
    this.$el.append(this.template(data)); // write to the DOM baby!!! The good stuff!!!  Render the underscore template using the function that is returned from underscore template
  }
});
​
​
​
// events/triggers/allthatjazz
/*===================================================================================================================================================
                    E V E N T S  A N D  T R I G G E R S
===================================================================================================================================================*/
$(document).ready(function() {
  instafake.active.photosCollection = new instafake.blueprints.collection(); // instantiate the collection to get started
  instafake.active.photosCollectionView = new instafake.blueprints.collectionView({ // instantiate the collection View which will begin the process of 'kicking' models out to the DOM
    collection: instafake.active.photosCollection // pass the collection attribute to this collection view instance so that the correct collection of photos is rendered for each kick in the butt
  });
  $('#add-instafake').on('click', function(event) {  // when the user clicks the add new photo button grab data from form elements and call collection.create() to add to the DB
    event.preventDefault();  // make sure that 'submit' buttons dont refresh the screen and think its a post back... This is AJAXXXXXXXX bitch!!!
    var username = $('#username').val();  // grab the username from the username form field
    var post = $('#post').val(); // grab the post from the post form field
    var description = $('#description').val(); // grab the description from the description form field
    var hashtags = $('#hashtags').val(); // grab the hashtags from the hashtags form field
    instafake.create(username, post, description, hashtags);// call the create helper function defined above to actually invoke collection.create which writes the data to the DB... woo hoo!!
  });
  $('#refresh-instafake').on('click', function() {  // on click of the refresh button we are going to invoke a new fetch() on collection which should trigger a 'sync' event
    instafake.active.photosCollection.fetch(); // this fetch() call will trigger a 'sync' event which we in turn trigger a render() call in the collection view which will 'kick each model in the butt' again to re-render on the screen
  });
});
```
