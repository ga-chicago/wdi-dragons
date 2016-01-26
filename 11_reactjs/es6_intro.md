## Introduction to ES6

This lesson was recorded and is available here:

* https://www.youtube.com/watch?v=QxnFyANaOYc

#### Source Code

* https://github.com/code-for-coffee/es6-practice

#### Topics Covered

* Introduction to ES6
* Using Gulp, Browserify, and Babel to transpire ES6 to usable code
* Highlights of ECMAScript 6
  - Using `let` for temporary variable assignment
  - Modules
  - Defining a `class` and using classical-style Inheritance
  - Defining a `constructor` for each class
  - Using the `=>` operator for function assignment

#### `let`

```javascript
{
    let answer = 42;
    console.log('Deep Thought responded: Oh, that? The answer is ' + answer);
}
```

```javascript
var stuff = ['my', 'cat', 'needs', 'tuna'];
for (let i = 0; i < stuff.length; i++) {
    console.log(i);
    console.log(stuff[i]);
}
```

#### `class`
*UserModel*
```javascript
var $ = require('jquery');
var userModel = {
    name: 'James',
    age: 31,
    hobby: 'sleep',
    lovesES6: true
};

class UserModel {
    constructor(params) {
        let self = this;
        if (typeof params == 'object' && params.hasOwnProperty('url')) {
            $.getJSON(params['url'], function(data) {
                console.log(data.results[0].user);
                self.attrs = data;
            });
        }
    }
    toObject() {
        return this.attrs;
    }
}

module.exports = UserModel;
```

*UserViewModel*
```javascript
var UserModel = require('./userModel');
class UserViewModel extends UserModel {

    toViewObject() {
        let result = {};
        result.name = this.attrs.username;
        result.phone = this.attrs.phone;
        return result;
    }
}

module.exports = UserViewModel;
```

#### `=>`

```javascript
// arrowed!
var cats = [
    {
        name: 'Magda',
        food: 'tuna'
    },
    {
        name: 'George',
        food: 'french fries'
    },
    {
        name: 'Violet',
        food: 'salmon and egg'
    }
];

var namesOfCats = cats.map(function(cat) {
    return cat.name;
});

//console.log(namesOfCats);

var paulsGotCats = cats.map( cat => cat.name );
console.log(paulsGotCats);

cats.forEach(cat => console.log(cat));
```
