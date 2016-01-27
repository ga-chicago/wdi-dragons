## Java to Javascript

* ICM want to hire Node developers!
* The interview problem is to turn some Java into Javascript!
* What if I don't know Java?! Do your best!

#### Problem

```java
public class Reader {

  public static void Main() {

  }

  public String ReadFile(String fs) {
    return System.in.read(fs);
  }

  public String SaveContentsToFile(String fs, String contents) {
    System.out.write(fs, contents);
    return "good job";
  }

}
```

#### Solutions

* es6/2015

```javascript
var fs = require('fs');
class Reader {
  main() {
  }
  readFile(file) {
    return fs.readFileSync(file);
  }
  saveContentsToFile(file, contents) {
    fs.writeFileSync(file, contents);
    return "good job";
  }
}
module.exports = Reader;
```

* es5 (current)

```javascript
var fs = require('fs');
function Reader() {
  this.main = function() {
  }
  this.readFile = function(file) {
    return fs.readFileSync(file);
  }
  this.saveContentsToFile = function(file, contents) {
    fs.writeFileSync(file, contents);
    return "good job";
  }
}
module.exports = Reader;
```
