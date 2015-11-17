## Javascript Selectors

- **HTML** is the _skeleton_ of a webpage; **Javascript** is the _muscle_! Javascript selectors allow us to create references to DOM Objects. Because DOM Objects are accessed you may modify the properties of these HTML elements directly.

#### Creating Selectors

- `var selector = document.getElementById("news");`
- Getting by **Ids** (unique) and **Classes** (meant for re-use):
-  `document.getElementById("my-id");`
  - returns an single item.
- `document.getElementsByClassName("navigation-item");`
  - returns *array* of items.
- use the `innerHTML` property to `get` or `set` values into a **selector**. For example:
  - `selector.innerHTML;` will return the innerHTML of a selector.
  - using `selector.innerHTML = "your text";` will replace the innerHTML.

#### Assignment
You can assign the results of functions to a variable!

- `var answer = prompt("Did you sleep at all?");`
- `var selector = document.getElementById("main");`

#### Types of Selectors

- `getElementById('string-id-name');` - Returns a single object
- `getElementsByTagName('ul');` - returns an array of all `ul` tags
- `getElementsByClassName('string-class-name');` - returns an array of all `.string-class-name`
- `querySelector('css-selector');` - returns a single object using CSS selector syntax
- `querySelectorAll('.my-class');` - returns an array of objects that use the CSS selector syntax

#### Creating DOM Elements / Manipulating them

```javascript
// basic selectors
// declare a selector named container
// access that container via document.getElementById('name-of'id)
var container = document.getElementById('container');
console.log(container);
var monsters = ['Wreck-it Ralph', 'The giraffe from Lion King SNES', 'Ganon'];

for (var baddie in monsters) {
  // create a new dom element using document.createElement('name-of-tag');
  var li = document.createElement('li');
  console.log(li);
  // access and assign a property to my dom element
  li.innerHTML = monsters[baddie];
  // append it to a container using selector.appendChild(domElement)
  container.appendChild(li);
}

// now, we need to create an image!
var kittenImage = document.createElement('img');
// alt text (alt) - ADA compliancy text for the blind
kittenImage.alt = 'A cute random kitten';
kittenImage.id = 'kitten';
// src = image source
kittenImage.src = 'http://vignette3.wikia.nocookie.net/clubpenguinpookie/images/d/d0/Extremely-cute-kitten_large.jpg/revision/latest?cb=20140614000321';
// append my element as a child to a selector
container.appendChild(kittenImage);
```
