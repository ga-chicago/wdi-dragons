## Component Constructor Boilerplate

```javascript
function component(domElement) {
​
  this.domElement = domElement;
  this.initialize = function() {
    console.log('init');
  };
  this.render = function() {
    console.log('render');
  }
​
}
```
