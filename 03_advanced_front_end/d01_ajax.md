___

<strong>Javascript</strong>
<h3>jQuery $.ajax()</h3>

---

##Summary

"Ajax" refers to the ability of JavaScript to make HTTP requests asynchronously (a.k.a. "in the background") and act on the results directly without having the browser load a new page. Just like DOM manipulation and event handling, jQuery gives us a high-level interface to the browser's Ajax capabilities through the $.ajax function.

Most Ajax interactions use the JSON data format for requests and responses.

## Request

![http_request_response.jpeg](http_request_response.jpeg)

![http_request_response.png](http_request_response.png)

####Standard Example

```javascript
$.ajax({
  url: 'http://localhost:8000/animals',
  type: 'POST',
  dataType: 'json',
  data: {"animal":
  {"name": animal,
  "sound": sound}
}})
```

#### OMDBI Example

```javascript
$.ajax({
	url: 'http://www.omdbapi.com/?t=Star+Wars&y=&plot=short&r=json',
	type: "GET",
	dataType: 'json',
	success: function(data) {
		$('body').append(data.Title + " was released in " + data.Year + "<hr><br>");
	}
});
```

#### Shake-it-speare
```javascript
$.ajax({
	url: 'http://shakeitspeare.com/api/poem',
	type: "GET",
	dataType: 'json',
	success: function(data) {
		var data = data;
		//console.log(data);
		$('body').append(data.poem);
		//alert("huzzah! we did it guys!");
	},
	fail: function(error) {
		console.log(error);
	}
});
```

### POST examples

```javascript
 var animal = $("#animalName").val();
    var sound = $("#animalSound").val();

    // alert(animal);

    $.ajax({
      url: 'http://localhost:8000/animals',
      type: 'POST',
      dataType: 'json',
      data: {"animal":
      {"name": animal,
      "sound": sound}
    }})
```
