
## Identify and use Underscore.js Templates


####Identify Underscore.js template

- It allows us to write parts of HTML
- And then insert various values into it dynamically as an object/hash/key value pair/dictionary
- Point it out in sample_view.js
- Notice how I send in a data hash and it gets rendered
- Have students open underscore_template.js/show on board
- walk through it step by step explaining what is going on

```javascript
// create a template
var tpl = _.template("<h1>Hello, I am <%= name %>! I enjoy <%= hobby %> and <%= food %>.</h1>");
// some data object
var data = {
  name: "James",
  hobby: "writing software",
  food: "sunflower seeds"
};
// replace $('body')'s html with it
console.log("first pass");
var rendered_template = tpl(data);
$('body').html(rendered_template);

// can also be written as this.. and changed the data
console.log("second pass");
data.food = "Sunflower butter & lignon berry sandwiches";
$('body').html(tpl(data));
```

#### Practice: Render content on your boilerplate
- Open a project with Backbone.js loaded.
- Create a script called `my_template.js` for future reference.
- In it, you'll do the following:
- Create an template to display "your name", "your favourite movie", "your favourite city", and "why I love WDI".
- Create a data object withn those values.
- Render it to `$(body).html()`
- Now, create two more templates and `$(document).append()`  them once they are rendered!
- Finally, copy/paste the contents of this script and run it inside of your Backbone Boilerplate
