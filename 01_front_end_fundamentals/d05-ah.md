

---

# Week 1 Weekend Practice - REPS!

---

## Round 1

Write a function `lengths` that accepts a single parameter as an argument, namely an array of strings. The function should return an array of numbers. Each number in the array should be the length of the corresponding string. To get you started, you'll need to **loop** through each *string* in the array and get the length of each one. Those lengths should be stored in a different array that you will return.

Remember that when building a function, you want to use **declare** a function with a **name** that accepts **arguments**. So for building our *function* called *lengths* that accepts an array of strings, it might look something like:

```
// declare function named "lengths"
// that accepts a arguments named "arrayOfStrings"
function lengths(arrayOfStrings) {

  // we can log out our "arrayOfStrings"
  console.log(arrayOfStrings);

  // now, we want to "return" something... but what?

  return whateverVariableYouWantToReturnHere;

}
```

- Reference: <a href="https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/String/length" target="_blank">MDN: String.length</a>

```javascript
var words = ["hello", "what", "is", "up", "dude"]
lengths(words)  # => [5, 4, 2, 2, 4]
```

---

## Round 2

Write a Javascript function called `transmogrifier`
This function should accept three arguments, which you can assume will be numbers.
Your function should return the "transmogrified" result

The transmogrified result of three numbers is the product (numbers multiplied together) of the first two numbers, raised to the power (exponentially) of the third number.

For example, the transmogrified result of 5, 3, and 2 is `(5 times 3) to the power of 2` is 225.

Use your function to find the following answers.

- Reference: <a href="https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Math/pow" target="_blank">MDN: Math.pow() for Exponential numbers</a>

```javascript

transmogrifier(5, 4, 3)
transmogrifier(13, 12, 5)
transmogrifier(42, 13, 7)

```
---
## Round 3

Write a function called `toonify` that takes two parameters, `accent` and `sentence`.
- If `accent` is the string `"daffy"`, return a modified version of `sentence` with all "s" replaced with "th".
- If the accent is `"elmer"`, replace all "r" with "w".
- Feel free to add your own accents as well!
- If the accent is not recognized, just return the sentence as-is.

- Reference: <a href="https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/String/replace" target="_blank">MDN: String.replace()</a>

```javascript

toonify("daffy", "so you smell like sausage")
#=> "tho you thmell like thauthage"

```
---
## Round 4

Write a function `wordReverse` that accepts a single argument, a string. The method should return a string with the order of the words reversed. Don't worry
about punctuation. You'll need to use `String.split()` to create an array of words (splitting them with a space or " ". Then you'll need to reverse the order of that array using `array.reverse()`. Finally, you'll loop through them to create a new string).

- References:
  - <a href="https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/String/split" target="_blank">MDN: String.split()</a>
  - <a href="https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/reverse" target="_blank">MDN: Array.reverse()</a>

```javascript
wordReverse("Now I know what a TV dinner feels like")
# => "like feels dinner TV a what know I Now"
```
---
## Round 5

Write a function `letterReverse` that accepts a single argument, a string. The function should maintain the order of words in the string but reverse the letters in each word. Don't worry about punctuation. This will be very similar to round 4 except you won't need to split them with a space.

- References:
  - <a href="https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/String/split" target="_blank">MDN: String.split()</a>
  - <a href="https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/reverse" target="_blank">MDN: Array.reverse()</a>

```javascript
letterReverse("Now I know what a TV dinner feels like")
# => "woN I wonk tahw a VT rennid sleef ekil"
letterReverse("Put Hans back on the line")
# => "tuP snaH kcab no eht enil"
```
---
## Round 6

Write a function `longest` that accepts a single argument, an array of strings. The method should return the longest word in the array. In case of a tie, the method should return the word that appears first in the array.

- Reference: <a href="https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/String/length" target="_blank">MDN: String.length</a>

```javascript
longest(["oh", "good", "grief"]) # => "grief"
longest(["Nothing" , "takes", "the", "taste", "out", "of", "peanut", "butter", "quite", "like", "unrequited", "love"])
# => "unrequited"
```
---
## Final Round

Write a function, called `repMaster`, that accepts two arguments, input and a function. Input should be able to be used with the function.  The function used as an argument must return a string.  `repMaster` should take the result of the string, passed as an argument to the argument function, and return this result with `' proves that I am the rep MASTER!'` concatenated to it.  

```javascript
repMaster("Never give your heart to a blockhead", wordReverse) # =>
"blockhead a to heart your give never proves that I am the rep MASTER!"
repMaster("I finished this practice", toUpperCase);
"I FINISHED THIS PRACTICE proves that I am the rep MASTER!"
```

Note that a function can be used as an argument for a function! Inside of the function, you just need to **call** it. Example:

```
function logSomething(string) {

  console.log(string);

}

function doSomethingWithFunctions(yourFunction) {

  // you 'call' yourFunction
  var someString = "hey, you're going to log me";
  return yourFunction(someString);

}

doSomethingWithFunctions(logSomething);
```

---

####Submitting this Assignment
- To submit this assignment create a pull request when you have completed
this assignment.
