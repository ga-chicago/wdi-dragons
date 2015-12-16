## Using Mongoose + Models with Node

```javascript
// require out database
require('./db/database');
// require our model
var Item = require('./models/Item');

// query the db
Item.find(function(error, items) {
  if (error) console.log(error);
  console.log(items);
});
```
