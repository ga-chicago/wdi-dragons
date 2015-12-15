## Node Modules

Like most other modern languages, Node is modular. In essence, if a file puts something inside of module.exports, it can be made available for use in any other file using `require()`.

For example, lets make two files: `touch my-module.js main.js`

```js
// my-module.js
var number = 7
module.exports.name = "Kenaniah"
module.exports.arr = [1, 2, 3]
module.exports.getNumber = function(){
    console.log("Get number called. Returning: ", number)
    return number
}

console.log("End of my-module.js file")
```


```js
// main.js

// here we're grabbing everything that's "exported" in our other file, and storing it a variable called 'my'
var my = require('./my-module')

// Variables and such that were not exported aren't in scope
console.log("number is " + typeof number) // undefined

// Anything exported can be accessed on the object
console.log("Name is: ", my.name)

// Closures are still closures
console.log("The number is: " + my.getNumber())

// JavaScript is still JavaScript
console.log("The array contains " + my.arr.length + " elements")

// Let's see the module we imported
console.log(my)
```

Then try running:
```
node my-module.js
node main.js
```
