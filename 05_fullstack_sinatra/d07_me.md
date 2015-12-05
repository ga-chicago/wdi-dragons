## 5.7 Morning Exercise with Divvy

#### Source

```javascript
// Make a Constructor of Pets With three properties and two methods

function Pets(name, sound, age){
  this.name = name;
  this.sound = sound;
  this.age = age;
  this.talk = function(){
    console.log("This animal goes " + this.sound);
  };
  this.sing = function(){
    console.log("I was running down the road one day, and someone hit a POSSUM")
  }
}

var franklin = new Pets('Franklin', "Woof Woof", 2);
Franklin.name;
Franklin.talk();
Franklin.sing();

var haileyAnn = new Pets('Baby girl', "ahhh Woooooooo", 14);
haileyAnn.name;
haileyAnn.talk();
haileyAnn.sing();

// Instatiate two instances of Pets and access the properties and methods in dev tools.

Loop over an array of five colors and print out each item to the console along with a message
var colors = ["blue", "purple", "orange", "red", "yellow"];

for (var i=0; i < colors.length; i++){
  console.log("The color is " +colors[i]);
}

// Maybe write a function now that takes in any array and prints out a message for each item

Create a function that returns a random integer between one and twenty.
function randomNum(){
  return Math.floor(Math.random() *20 +1);
}

// maybe create a function that takes in two arguments and returns a value between the two arguments.

// Create a funtion that returns a random item from an array

var seinfeld = ["george", "jerry", "Cosmo", "Elaine"];
function item (arr){
  return seinfeld[Math.floor(Math.random()* arr.length)];
}



// Api Call

$(document).ready(function(){

$.ajax(getDivy);

});

var getDivy = {
    type: 'get',
    url: 'https://data.cityofchicago.org/resource/bk89-9dk7.json',
    dataType: 'json',
    success: function(data){
      console.log(data);
      console.log(data[0].station_name)
      for (var i =0; i < 30; i++){
        $('body').append("<li>The divy bikes at the location of "+ data[i].station_name + " and has " + data[i].docks_in_service + " docks in service</li>");
      }
    }, error: function() {
    console.log("It didn't work big dumb idiot")
    }
};
```
