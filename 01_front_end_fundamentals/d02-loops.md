___

<strong>Javascript</strong>
<h3>Loops</h3>

---


##Summary

We covered three types of loops: `for`, `while`, and `for-in`. The following example loops through a **kitties** array and then logs each item.
```javascript
var kitties = [
  "magda",
  "grumpy cat",
  "pi",
  "roscoe",
  "adventure kitty"
];
```
Each loop below does nearly the exact same thing.
- A `for` loop should be used when you **know how you want to control** your loop. You have complete control over the condition.
```javascript
for (var i = 0; i < kitties.length; i++) {
	console.log(kitties[i]);
}
```
- A `for-in` loop will allow you to iterate and access every item in your array but may or may not return everything in the appropriate order. If you need to access all items without concern for order, you should use a `for-in` loop.
```javascript
for (var cat in kitties) {
	console.log(kitties[cat]);
}
```
- A `while` loop is designed to allow you to **do** something without knowing how long it could occur. Remember the *b* button for Mario running example?
```javascript
var i = 0;
while (i < kitties.length) {
	console.log(kitties[i]);
	i++;
}
```

##Examples

**Javascript**

```javascript
// FIRST, let us create our object
var myObj = {
  name: "James",
  students: [
    'Jason', 'Paul', 'Ruth', 'Katie'],
  food: 'soylent',
  favouriteMusic: 'indie pop',
  favouriteAnimal: 'cat',
  colour: 'purple',
  phone: 'HTC',
  money: 'none, I am broke',
  isTired: false,
  isAwake: false
};

// for-in loop on an object
// the goal is to log out all values in keys

console.log("Logging keys then values using for-in loop:");
console.log("---------------------------------");


// var key = index
// myObj = object
for (var key in myObj) {

  // log the key only
  // ie: myObj.name
  // "name" is the key

  console.log(key);

  // only logging my values per each
  // myObj.key
  // or myObj[key]

  console.log(myObj[key]);

}

console.log("Only logging keys using for loop:");
console.log("---------------------------------");
// create an array of my keys
// Object.keys() returns an array of all
// keys in an Object
var myKeys = Object.keys(myObj);

// now, we will just do a for loop
// for each key to be printed out
for (var counter = 0; counter < myKeys.length; counter++) {

  console.log(myKeys[counter]);

}


// for-in loop on an object
// log the key : value on same line

console.log("Logging keys : values using for-in loop:");
console.log("---------------------------------");


// var key = index
// myObj = object
for (var key in myObj) {

  console.log("Key: " + key + ", Value: " + myObj[key]);

}
```


## References

- <a href="https://developer.mozilla.org/en-US/docs/Web/JavaScript/Guide/Loops_and_iteration">MDN: Loops and Iteration</a>
