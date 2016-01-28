## Declaring Regular Expressions

```javascript
var pattern = /azc/; // regex literal
var antipattern = new RegExp("cza"); // constructor
```

## Testing for Pattern Matches in a String

```javascript
pattern.test('azcfasd');
antipattern.test('btczasla');
```

## Module Example

```javascript
function EmailValidator(emailAddress) {
  this.emailAddress = emailAddress;
  // this pattern
  // ^ starts matching a new line
  // \S looks for non-white space
  // +@ looks up to and including the @ symbol
  // \S looks for more non-white space
  // $ denotes matching the end of a line
  this.pattern = /^\S+@\S+$/;
  this.validate = function() {
    return this.pattern.test(this.emailAddress);
  }
};
module.exports = EmailValidator;
```
