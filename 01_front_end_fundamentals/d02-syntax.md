___

<strong>Javascript</strong>
<h3>Syntax</h3>

---

##Syntax Overview

```javascript

// This quick Javascript file is designed to walk you through
// the basic syntax of Javascript!
// Let us get started!

// we use 'var' to declare a variable.
// always, always, always use 'var'.
var myVariable;

// we've just created a brand new variable with an 'undefined' value.
// we want to 'assign' a value to a variable. You use '=' to assign values.
var myVariable = "I have a value!";

// let's break that down:
// var declares our variable called 'myVariable'. we then use '=' to *assign* it
// a *string* value of "I have a value!". Finally, we 'end' that statement with a ';'.
// always, always, always end your statements with a ';'.
// the ';' tells Javascript "HEY! WE'RE DONE, MOVE ON TO THE NEXT STATEMENT!"
// let's do this again! We'll make a number:
// I am *declaring a variable* called 'myNumber' and *assigning* it a value of 42. end statement.
var myNumber = 42;

// let's make a few more!
var myArray = [myVariable, myNumber, "some text"];
var myFloat = 3.14;

// you should practice creating variables. Remember how to "build" your statements.
// So what about 'conditionals' and 'loops'? These braces ('{' * '}') are confusing, right?
// The braces are designed to let you *organize* your code into 'blocks'.
// They are basically the walls of your code. They keep things contained - neat and tidy.
// Let us inspect a basic 'if' statement:
if (myNumber == 42) {  // <-- this brace starts a new block of code!
  // you could have some code in here
} // this brace ends this block of code!

// Notice how we encased that 'condition' inside of ()?
// That allows us to define a condition.
// We're going to now build a new condition.
// How would we write out 'if myAge > 65 then I am retired'?
if (myAge > 65) {
  alert("retired!");
}

// notice how we put our 'condition' inside of the ()?
// They should always be wrapped inside of () when using if/else/loops/etc.
// And we can run code inside of that block.
// But what if we aren't retired? How do I use the braces appropriately?
if (myAge > 65) {
  alert("retired");
} else { // notice how 'else' is between different braces? this allows us to divide the blocks
  alert("not retired");
} // end second block

// if you want to add another condition (if else), it would be built the same way:
if (myAge > 65) {
  alert("retired!");
} else if (myAge < 18) { // see how we () to "wrap" another condition? and add a new block of code?
  alert("not an adult yet");
} else { // new 'block' of code
  alert("not retired");
}

// So braces allow us to organize our code.
// Keep in mind - 'conditions' must be inside of (). If they're not, your code will error out.
// This has been a quick and dirty intro to JS Syntax. If you have any questions, please feel free to ask!
```
