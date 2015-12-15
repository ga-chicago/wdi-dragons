## Node Examples

#### Simple Web Server

```javascript
// assign a variable to an NPM library
var http = require('http');

// http library: create a server, and listen for requests
// and responses
http.createServer(function(request, response) {
  response.writeHead(200); // status message 200 ok
  response.write('holy f I just built a server'); // send data to server
  response.end(); // stop sending
}).listen(5000); // localhost:5000

console.log('My server is running :)');
```

#### Serving JSON as an API

*This example assumes that a data.json file is in the same directory as our application.*

```javascript
var http = require('http'); // library for http
var fs = require('fs'); // library for filesystem

var json = fs.readFileSync('./data.json');

http.createServer(function(request, response){
  response.writeHead(200);
  response.write(json);
  response.end();
}).listen(5000);

// console message to let us know it is running
console.log('api server is ready');
```

#### Serving HTML


*This example assumes that an index.html file is in the same directory as our application.*

```javascript
var http = require('http');
var fs = require('fs'); // file system access!

var html = fs.readFileSync('./index.html');

http.createServer(function(request, response) {
  response.writeHead(200);
  response.write(html);
  response.end();
}).listen(5000);

console.log('HTML server on port 5000');
```
