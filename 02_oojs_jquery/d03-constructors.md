## Constructors

#### Description

Constructors are blueprints to create objects. We define a function that accepts arguments. We then create a new **instance** of an object (through **instantiation**).

#### In-Class Examples

```javascript
// the giver (todo: read)

function person(name, age, fact) {

  // assign properties to an object
  this.name = name;
  this.age = parseInt(age);
  this.fact = fact;

}



// bike constructor
// it creates an object
// a constructor is a blueprint to construct an object
// speeds, colour, size, price, brand
function bike(speeds, colour, size, price, brand) {

  // attributes
  this.speeds = speeds;
  this.colour = colour;
  this.size = size;
  this.price = price;
  this.brand = brand;

  // abilities
  this.toString = function() {
    return 'This bike has ' + this.speeds + ' and is ' + this.colour;
  }

}
// declare a variable called annasBike
// create a 'new' INSTANCE of 'bike'
// create a new copy of bike
var annasBike = new bike(21, 'teal', 'small', 350, 'diamondback');
annasBike.toString();
var jamesBike = new bike(6, 'white', 'medium', 200, 'biria');
jamesBike.toString();
```
