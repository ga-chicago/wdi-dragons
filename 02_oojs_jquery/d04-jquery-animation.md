## jQuery Animation

```javascript
$(document).ready(function(){

  console.log('everything is loaded')

  $('.box1').fadeToggle(2000);
  $('h1').fadeIn(5000);

  // $('#btn').click(function(){
  //
  //   $('.box2').slideToggle('slow')
  //   $('.box3').animate({ "top": "+=50px" }, "slow" ).css('background-color', 'blue');;
  // })

  $('#btnLeft').click(function(){
    $('.box3').animate({'left': '-=50px'}, 'slow');
    $('.box2').css("background-color", "red");
  })
  $('#btnUp').click(function(){
    $('.box3').animate({'top': '-=50px'}, 'slow');
  })
  $('#btnRight').click(function(){
    $('.box3').animate({'left': '+=50px'}, 'slow');
  })
  $('#btnDown').click(function(){

    $('.box3').animate({'top': '+=50px'}, 'slow');
  })

})// End of document.ready
```

```css
html, body {
  width: 100%;
  height: 100%;
  margin: 0px;
  padding: 0px;
}

header  {
  width: 100%;
  height: 200px;
  background-color: rgba(131, 89, 167, 0.64);
  margin: 0;
}

h1  {
  color: blue;
  margin-top: 50px;
  float: right;
  margin-right: 45%;
  display: none;
}


/*.box1 {
  background-color: green;
  height: 200px;
  width: 200px;
  display: none;
}

.box2 {
  background-color: rgba(168, 167, 79, 0.66);
  height: 200px;
  width: 200px;
  margin: 0 auto;
}*/

.box3 {
  background-color: rgba(0, 167, 79, 0.66);
  height: 200px;
  width: 200px;
  left: 50px;
  /*right: 50px;*/
  top: 100px;
  margin-left: 50%;
  border-radius: 50%;
  position: absolute;
  border: 6px dotted black;
  background: repeating-radial-gradient(rgba(107, 193, 212, 0.46), black 5px, blue 5px, green 10px);
}

button {
  display: block;
  margin-bottom: 1%;
  width: 75px;
  padding: 20px;
  border-radius: 50%;
  background-color: rgb(163, 150, 201);
  border-style: inset;
  border-width: 3px;
  position: relative;
  box-shadow: 10px 5px 5px black;
  border-color: rgba(170, 25, 101, 0.64);
}
```

```html
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <title>jqueryAnimations</title>
    <link rel="stylesheet" href="styles/style.css" media="screen" title="no title" charset="utf-8">
​
  </head>
  <body>
    <header>
      <h1>I'm A Real Boy!</h1>
    </header>
​
    <button id='btnRight' type="button" name="button">Right</button>
    <button id ='btnUp' type="button" name="button">UP</button>
    <button id='btnDown' type="button" name="button">Down</button>
    <button id='btnLeft' type="button" name="button">Left</button>
​
    <div class="box1">
​
    </div>
​
    <script type="text/javascript" src='https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.4/jquery.js'></script>
    <script type="text/javascript" src='scripts/app.js'></script>
  </body>
</html>
```
