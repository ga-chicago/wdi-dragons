## Running Average

```javascript
'use strict'
class RunningAverage {
  constructor(arrayOfNumbers) {
    this.data = arrayOfNumbers || [];
  }
  average() {
    let avg;
    let len = this.data.length;
    let total = 0;
    for (var i = 0; i < len; i++) {
      console.log(this.data[i]);
      console.log(total);
      total = parseFloat(total) + parseFloat(this.data[i]);
    }
    console.log(total);
    avg = (parseFloat(total) / parseFloat(len));
    return avg;
  }
  add(numeric) {
    this.data.push(numeric);
  }
}
var avg = new RunningAverage([42,12,13,19012,123,52342,1410132,123123,03,43,312]);
avg.average();
```
