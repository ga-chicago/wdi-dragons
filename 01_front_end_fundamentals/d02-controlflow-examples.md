
## 1.2 Lesson Examples: Logical operators and control flow

JavaScript supports a compact set of statements, specifically control flow statements, that you can use to incorporate a great deal of interactivity in your application.

<br>

#### Block Statements

Statements meant to be executed after a control flow operation will be grouped into what is called a **block statement**. These statements are wrapped into a pair of curly braces:

```
{
  console.log("hello");
  console.log("roar");
}
```

#### Block scope

We've seen that the scope in JavaScript changes often. In the case of **block statements**, there is no scope created.

```
var name = "james";
{
  var name = "adriana";
}
console.log(x); // outputs gerry
```

Only functions introduce scope in Javascript.

## Conditional statements

Conditional statements are a way of essentially skipping over a block of code if it does not pass a boolean expression. JavaScript supports two conditional statements: `if`...`else` and `switch`.

#### if...else statement

`if(expr) { code }`

... means run the `code` block if `expr` is `true`

```javascript
if (1 > 0) { console.log("hi") }
//=> hi
```

When you need to test more than one case, you may use `else if`:

```javascript
var name = "kittens";
if (name == "puppies") {
  name += "!";
} else if (name == "kittens") {
  name += "!!";
} else {
  name = "!" + name;
}
name == "kittens!!"
//=> true
```

**Note**: It is recommended **to not** assign variables in the conditional expression, because the assignment of a value to a variable, like this:

```javascript
student = "Jason";
//=> "Jason"
```

The expression above will return the value (as shown on the second line), so if you assign a truthy value inside a conditional statement, then this condition will always be true, or if you assign something undefined, it will make the conditional statement false (because undefined is falsy). Another potential issue with this is that it can be confused with equality(`==`). The example below is the illustration of WHAT NOT TO DO, in general:

```javascript
if (x = 3) {
    console.log("boo");
}
```


## Truthy & Falsy

#### All of the following become false when converted to a Boolean

- `false`
- `0`
- `""` (empty string)
- `NaN`
- `null`
- `undefined`

#### All other values become true when converted to a Boolean

Do not confuse the primitive boolean values `true` and `false` with the true and false values of the Boolean object. For example:

```javascript
var b = new Boolean(false);
if (b) { console.log("true") }
//=> true
```

There is a simple way of verifying the thruthyness or falsiness of a value. When you add `!` in front of a value, the returned value will be the inverse of the value in a boolean. So if you add two `!` then you'll get the boolean value of the original one:

```javascript
!!1
//=> true

!!0
//=> false

!!-1
//=> true

!![]
//=> true

!!{}
//=> true

!!null
//=> false

!!""
//=> false
```

## Boolean/Logical Operators

[Logical operators](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Operators/Logical_Operators)

Logical operators will always return a boolean value `true` or `false`.

There are two "binary" operators that require two values:

- **AND**, denoted `&&`
- **OR**, denoted `||`

A third "unary" operatory requires only one value:

* **NOT**, denoted `!`

#### && (AND)

The `&&` operator requires both left and right values to be `true` in order to return `true`:

```javascript
true && true
//=> true
```

Any other combination is false.

```javascript
true && false
//=> false

false && false
//=> false
```

#### || (OR)

The `||` operator requires just one of the left or right values to be `true` in order to return true.

```javascript
true || false
//=> true

false || true
//=> true

false || false
//=> false
```

Only `false || false` will return `false`

The `!` takes a value and returns the opposite boolean value, i.e.

```javascript
!(true)
//=> false
```

The `&&` and `||` operators use short-circuit logic, which means whether they will execute their second operand is dependent on the first. This is useful for checking for null objects before accessing their attributes:

```javascript
var name = o && o.getName();
```

In this case, if the first operand `o` is false, then the second operand `o.getName()` will not be evaluated. The expression is basically saying "we already know the whole `&&` expression is false, because `o` is falsey. Why bother dealing with the second operand?"

Or for setting default values:

```javascript
var name = otherName || o.getName();
```

In this case, if the first operand `otherName` is false, then we'll see that `"my name"` will be returned. If othername is truthy (e.g. it contains a value), it will get returned, and the second expression won't even be evaluated. The expression is basically saying "we already know the whole `||` expression is true, because `o` is truthy. Why bother dealing with the second operand?"

## Comparison Operators

[Comparisons](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Operators/Comparison_Operators) in JavaScript can be made using `<`, `>`, `<=` and `>=`. These work for both strings and numbers. This is both useful, and can be the source of frustration for some developers, since most languages do not implicitly convert strings to numbers the way that JavaScript does.

```javascript
"A" > "a"
//=> false

"b" > "a"
//=> true

12 > "12"
//=> false

12 >= "12"
//=> true
```

#### Equality Operator `==`

Equality is a bit more complex. There are 2 ways in JavaScript to verify equality.

When verifying equality using double equal `==`, JavaScript does a lot of the "type coercion" in the background. Like we mentioned above, if the operands have a different type (ie: the number `1` and the string `"1"`), JavaScript will try to change the type of both operands to check whether they are equal. This means that a lot of times, expressions will return equal more easily than if we were stricter about what things were equivalent. Some examples:

```javascript
"dog" == "dog";
//=> true

1 == true;
//=> true
```

#### Equality Operator `===`

To avoid type coercion and measure equality more strictly, **use the triple-equals operator**. Because `===` more truly measures actual equality, we'll use this far more often when checking whether too things are, in fact, the same thing.

> **Note:** "Sameness" and "equality" have various definitions and can be somewhat "fuzzy". They can also differ by programming language. Because you'll often be measuring whether two things are equal, you should investigate the way this works carefully.

Some examples:

```javascript
1 === true;
//=> false

true === true;
//=> true

"hello" === "hello"
//=> true
```

However, there are some incidents when it does not do what we expect, for example when working with empty objects or arrays:

```javascript
{} === {}
//=> Uncaught SyntaxError: Unexpected token ===

[] === []
//=> false

[1,7] === [1,7]
//=> false
```

## Switch Statement

The switch statement can be used for multiple branches based on a number or string:

```javascript
var food = "apple";

switch(food) {
  case 'pear':
    console.log("I like pears");
    break;
  case 'apple':
    console.log("I like apples");
    break;
  default:
    console.log("No favourite");
}
//=> I like apples
```

In this case the `switch` statement compares `food` to each of the cases (`pear` and `apple`), and evaluates the expressions beneath them if there is a match. It uses `===` to evaluate equality.

The default clause is optional.

## Iteration

Iterating is a way of incrementally repeating a task.

#### for

You can iterate over an array with:

```javascript
var a = [1, 2, 3, 4, 5];
for (var i = 0; i < a.length; i++) {
  console.log(i);
}
```

This is slightly inefficient as you are looking up the length property once every loop. An improvement is to chain the `var` assignment:

```javascript
var a = [1, 2, 3, 4, 5];
for (var i = 0, len = a.length; i < len; i++) {
  console.log(i);
}
```

Notice the placement of the comma and semi-colons.


## Further Reading

- [Control Flow](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Guide/Control_flow_and_error_handling)
- [While](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Statements/while)
