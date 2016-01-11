## Backbone.js Events

Or, how I saved myself from re-attaching events to buttons over and over
---

### Learning Objectives
By the end of this lesson, you will...
- Understand how to map events to functions
- Map clicks on DOM elements to functions
- How to keep those events bound after re-rendering

---
### Introduction
- jQuery events are long and convoluted to write sometimes
- Backbone gives us a really easy way to map jQuery and Backbone.js events to functions
- It also will automatically re-bind events every time you re-render
- This is awesome, right?

### Real-world application
- Today we're going to demonstrate clicking how to create a login form using a Backbone View and Model.
- Sure, you can do this in jQuery. It'd look something like:
```javascript
// clicking on a button inside of our $el
render: function() {
  // find a child DOM element (button), then bind a click handler to it
    $(this.$el).children('button').on('click', function(event){
      // log the event out
      console.log(event);
      // let us know we've detected a button click!
      alert('the button has been clicked!');
    });
}
```

- Let's do this in Backbone instead

```javascript
events: {
  'button click': function() {
    console.log(event);
    // let us know we've detected a button click!
    alert('the button has been clicked!');
  }
}
```

- This can also be mapped to a method on the View!

```javascript
events: {
  'button click': 'clickMe'
},
clickMe: function() {
  console.log(event);
  // let us know we've detected a button click!
  alert('the button has been clicked!');
}
```
