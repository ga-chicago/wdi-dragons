## Backbone.js Models and Collections

#### LO's
- Recap Underscore Templates and Views
- Populate models models with data from APIs
- Bind a RESTful API in real time to a Collection

#### Intro & Connections
- We're going to manipulate our API with ease using Backbone.js.
- Companies such as Groupon, CenturyLink, Pivotal, NY Times, and more use this design style
- You'll be able to build flexible websites using Sinatra and Backbone.js

## Populate models and collections with data from APIs

### Demonstrate Models
- I will be performing my work inside of Chrome console (and expand it)
- Models are designed to interact with a data source.
- They are the *truth* in your application.
- Backbone's models are designed to connect to APIs.
- Open the console and create the following model line by line & describing:
```javascript
// using http://openweathermap.org/weather-data#current
var Weather = Backbone.Model.extend();
// we're going to use open weather
// create a new instane of Weather
var forecast = new Weather();
// show empty attributes
console.log(forecast.attributes);
// set url to get data from
forecast.url = "http://api.openweathermap.org/data/2.5/find?q=Chicago&units=imperial";
// fetch data from API
forecast.fetch();
// console log out new attributes
console.log(forecast.attributes);
// we're going to use a model's getter to get a value from the attributes
var data = forecast.get("list");
// log out data
console.log(data[0].main);
// put some data together
var weatherData = {
  location: data[0].name,
  humidity: data[0].main.humidity,
  temp: data[0].main.temp
};
// cool, let's make a template
// ah, see where I'm going with this?
// an underscore template
var template = _.template("It is <%= temp %> degrees Farenheight in <%= location %> with <%= humidity %> percent humidity.");
// now render it all together
template(weatherData);
// now, let's add this to the DOM, shall we?
$('body').html(template(weatherData));
```

### Discuss Properties of a model

Q: How do you think that models work?

Q: What properties and abilities have you seen that models have?

Q: What properties and abilities do you think models have?

### Build a Model

- Choose a partner that is **not** next to you!
- In `w06/d01/you_name`, create a new file called `fun_with_models.js`
- Open `fun_with_models.js` in *atom*.
- Search the internet for an API that you can retrieve information from.
- Create a Backbone.js model inside of your file.
- Instantiate a *new* model.
- Give it a **url**.
- **fetch()** the data.
- Console log out your model's **attributes**
- Discuss with your partner the data that has been returned.

### Attributes and history inside of a model
- Discuss the attributes object
- Discuss **get** and **set** and how they trigger events
- 'attributes' is just where your data is temporarily stored!
- Here is some script in slack. It logs out the model's attributes before and after a fetch.
```javascript
var Weather = Backbone.Model.extend({
  url:
  initialize: function() {
    console.log("- Weather View has been created. Here are its attributes -");
    console.log(this.attributes);
    this.fetch();
    console.log("- Weather View has called fetch()! It is super effective! here are new attributes -");
    console.log(this.attributes);
  }
});
var weather = new Weather({url: "http://api.openweathermap.org/data/2.5/find?q=Chicago&units=imperial"});
```
- Models store information about themselves, too. There is also a changed/history object.
- Constructors automatically bind certain values in models like they do in views (remember el?)
