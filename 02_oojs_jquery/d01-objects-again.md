## Object Methods & 'this'

#### hasOwnProperty

* `Object.hasOwnProperty('name-of-key');`
* Allows you to check an object for a specific key
* Returns true/false

*Example:*
```javascript
var obj = {
  kittens: 'aww';
};
obj.hasOwnProperty('kittens'); // true
```

#### Object.keys()

* `Object.keys(nameOfObject);`
* Returns an array of every key that an Object has

*Example:*
```javascript
var obj = {
  kittens: 'aww',
  puppies: 'adorable'
};
Object.keys(obj); // ['kittens', 'puppies']
```

#### 'this'

* 'this' allows us to reference a base object
* Think of `this` as being able to jump up a root level in an object
* Further reading: http://javascriptissexy.com/understand-javascripts-this-with-clarity-and-master-it/
