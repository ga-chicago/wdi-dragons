## 7.1 Javascript Recap, Reps, and Resilience

#### Instructions

You will create an individual file for each of these tasks. Each task will be named as `one.js`, `two.js`, etc. based on the number that corresponds to the task. Please save these in `07_fullstack_node/your_name` and create a pull request when completed. **NOTE** that not **all** of these must be completed. You know what skills you should focus on. We leave hints to help you; you must do your own research.

You may also need to use HTML and/or CSS to complete this task. We just want the Javascript code. Feel free to use tools like **Codepen** and **JSFiddle** and link to them if you *do* use them in a comment.

#### 1. Data Types

Create the following variables and in a comment after the variable, state the type that it is. If you are unsure of the type, use the function `typeof` to find it out. Note that some types may not be what you expect...

* The number that represents *pi*.
* Your full name.
* A list of prime numbers.
* A `hash`-like structure to represent the attributes of yourself.
* If you are taking WDI or not.

#### 2. Array Manipulation

* Create an array.
* Add 3 places you have visited in your life.
* Remove two of them from the front of the array.
* Add 3 places that you would like to travel to.
* Remove one of them from the end of the array.

#### 3. Objects; Objects Everywhere

* Create an Object that represents a laptop.
* Give it 3-5 attributes.
* Give it one ability that tells the world about itself (similar to a `to_s` in Ruby)

#### 4. Objects... again

* Using the Object you created for #3....
* Research the Object method that lists all of the `keys` in an Object. Use it to create an array.
* Loop through this array using a `for` (not a `for-in`) loop.
* `console.log` the keys.

#### 5. Conditional Trials

* Create a logical block that detects if a user is able to purchase alcohol.
* If so, `console.log` out that they may have a drink.
* Else, warn them via `console.log` to not break the law.

#### 6. Loops, Loops, Merry-go-round

* Create an array of your friends.
* Now, create a loop that will `pop` a friend out every time the loop runs.
* Tell a funny story about how they leave each time. `console.log` is your friend here.

#### 7. Vanilla Selectors

* Create a *vanilla* Javascript **selector** to select the following:
* `<section id='vanilla'>I really like artificial vanilla flavour</section>`
* Console.log the interior content of this tag.

#### 8. jQuery Selectors

* Create a *jQuery* Javascript **selector** to select the following:
* `<article id='strawberry'>I really like strawberry milkshakes from McDonalds!</article>`
* Console.log the interior content of this tag.

#### 9. Functions!

* Create a re-usable function that performs a square root operation on a number.
* You will need at least one argument for your function.
* You will need the `Math` object here as well.

#### 10. Story Time!

* Create a function that tells a story.
* It should feel like mad-libs.
* It should accept at least 5 arguments.
* The return of this function should be a story.
* You should use only `string` types.

#### 11. Constructors

* Constructors are essentially classes/blueprints for Javascript.
* Create a re-usable constructor for `bands`
* `bands` have members, names, date formed, and albums.
* They also have an `onTour` attribute as well.
* Use this constructor to create three of your favourite bands!

#### 12. The Functions Strike Back!

* It is a dark time for the Ruby Rebellion.
* Javascript is on the rise.
* We use Backbone to create models...
* Backbone models can *get()* and *set()* properties (similar to Ruby Classes).
* Create two functions that mimics `model.get` and `model.set` for an object.
* These functions will be `abilities` on an object called `model`.

#### 13. AJAXXXXXXXXXXXXXXXX

* Use jQuery to create an `$.ajax` request that `gets` JSON.
* You will **get JSON** from Chicago public data.
* Console.log the output.
* Create a `success` and `error` function that log out information.
* You do not need to get very detailed; this is a basic function that just fetches and logs out **all the data**.

#### 14. MOAR AJAXXXXXXXXXXX

* Create an `$.ajax` request that fetches your favourite movie from OMDB.
* http://www.omdbapi.com/
* In the `success` function, you need to `console.log` five attributes about the movie.
* In the `error` function, you need to `console.log` that *'an error has occured. sorry!'*

#### 15. Return of the Functions

* Create a function that draws a rectangle on a canvas element.
* This function should accept arguments for `height`, `width`, and `colour`.
* Return a successfully draw rectangle using Canvas.
