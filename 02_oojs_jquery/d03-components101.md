## Components 101

* Each component has a DOM element that contains information to be shown to the user
* Each component has an `initialize` function to set up the component
* Each component has a `render` function that is used to update/display content to the user
* A component should be contained and be able to know about itself (by checking `attributes`)

```javascript
var component = {
  domElement: null,
  initialize: function(selector) {
    // create a dom element
    this.domElement = document.createElement('div');
    // attach it
    selector.appendChild(this.domElement);
  },
  render: function(statusText) {
    // update the dom element
    this.domElement.innerHTML = statusText;
  }
};
```

#### User Component Example

```javascript
// create a user interface component!
// the goal here is to create an Object
// that can update itself
// and visually show that if needed

// ex #1: user component
var user = {
  name: null,
  score: 0,
  domElement: null,
  // elementToAppendTo: document.selector for an indivual element
  initialize: function(elementToAppendTo) {
    if (this.name == null) {
      this.name = prompt('What is your name?');
    }
    this.domElement = document.createElement('div');
    elementToAppendTo.appendChild(this.domElement);
    console.log('initialize: complete');
  },
  // innerHTM: valid html to place in our domElement
  render: function(innerHTML) {
    if (typeof(innerHTML) == 'string') {
      this.domElement.innerHTML = innerHTML;
    }
  },
  buildPlayerStatusString: function() {
    return this.name + ': ' + this.score;
  },
  getName: function() {
    return this.name;
  },
  saveName: function(newName) {
    if (typeof(newName) == 'string' && newName.length > 0) {
      this.name = newName;
    } else {
      alert('You entered an incorrect or empty name');
    }
  },
  getScore: function() {
    return this.score;
  },
  updateScoreByOnePoint: function() {
    this.score = this.score + 1;
    var status = this.buildPlayerStatusString();
    this.render(status);
    return this.score;
  }
};
```

#### Another Example

```javascript
var comp = {

   domElement: null,

   initialize: function(domSelector) {
     console.log('initializing component');
     this.domElement = document.createElement('img'); //<img />
     domSelector.appendChild(this.domElement);
   },

   render: function(imageSrc) {
     this.domElement.src = imageSrc; // <img src='imageSrc'>
   }

};

var body = document.getElementsByTagName('body')[0];
console.log(body);
body.innerHTML = '';
var ponyImg = 'http://www.animalsbase.com/wp-content/uploads/2015/06/Pony.jpg';
comp.initialize(body);
comp.render(ponyImg);
```
