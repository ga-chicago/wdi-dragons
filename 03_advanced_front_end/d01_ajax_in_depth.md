## Ajax in Depth
We can **GET** and **POST** resources to the web using *Ajax!*

```javascript
// $.ajax
// GET: get resources from a web
// POST: send /submit data somewhere (POST a tweet or status)
```

Remember... Ajax is just a method of jQuery!
```javascript
$.ajax(); // ajax is a method of jQuery
```

And that is accepts an **arguments** object!
```javascript
// arguments {} for jQuery
{
	type: 'get', // OR 'post'
	url: 'http://somewhere.com/api/stuff', // url
	dataType: 'json', // also could be 'xml', etc..
	// POST only...
	data: {}	// send
}
```

Let's add the object as the argument to the jQuery method...
```javascript
// add arguments - argument for Ajax is a JS {}
$.ajax({
	type: 'get',
	url: 'http://somewhere.com/api/stuff',
	dataType: 'json'
});
```

I can refer to that argument as a variable for ease of use
```javascript
var ajaxArgument = {
	type: 'get',
	url: 'http://api.openweathermap.org/data/2.5/forecast/city?id=524901&APPID=1111111111',
	dataType: 'json',
	success: function(data) {
		console.log("success");
		console.log(data);
	},
	error: function(error) {
		console.log("error")
		console.log(error);
	}
};
// make the ajax call
$.ajax(ajaxArgument);
```

I can also call .done and .fail if I prefer to chain methods...
```javascript
// or...
$.ajax(ajaxArgument).done(function(data) {
	console.log(data);
});
$.ajax(ajaxArgument).fail(function(error) {
	console.log(error);
});
```

**Example:** Add a loading spinner icon when a request is made and remove it when the request is done.
```javascript
// how do I add a spinner or some sort of icon to show loading?

// do some code to show a spinner...
$('.spinner').show(); // <div class="spinner">....
$.ajax({
	type: 'get',
	url: 'http://imperialholonet.herokuapp.com',
	dataType: 'json',
	success: function(data) { // data is the data from our server
		console.log(data);
		// some code to success message!
		$('.success').show(); // <div class="success">....
		$('.spinner').hide(); // <div class="spinner">....
	},
	error: function(error) {
		console.log(error);
		// some error code...
		$('.wompwomp').show(); // <div class="wompwomp">....
		$('.spinner').hide(); // <div class="spinner">....
	},
});
```

What is this `.done()` anyways?
```javascript
// using .done()
// only should be used when you own the server for the API
// not if you rely on someone else for data!
var ajaxArgument = {
	type: 'get',
	url: 'http://api.openweathermap.org/data/2.5/forecast/city?id=524901&APPID=1111111111',
	dataType: 'json'
};
$.ajax(ajaxArgument).done(function(data) {
	console.log('whoa now, we\'re done..');
	console.log(data);
});
```

We can also shorthand Ajax **GET** requests...

```javascript
// what about... .getJSON?
// shorthand 'GET' request method
$.getJSON("url", function(data) {
    // do stuff with your data
    console.log(data);
});
```

Now, let's take a look at what a *closure* is...

```javascript
// closure is a way to access data inside of a
// scope that no longer exists
var ajaxArgument = {
	type: 'get',
	url: 'http://api.openweathermap.org/data/2.5/forecast/city?id=524901&APPID=1111111111',
	dataType: 'json',
	success: function(data) {
		console.log("success");
		console.log(data);
	},
	error: function(error) {
		console.log("error")
		console.log(error);
	}
};
var oldAjax = $.ajax(ajaxArgument); // assign ajax to
console.log(oldAjax.responseJSON); // closure data
```
