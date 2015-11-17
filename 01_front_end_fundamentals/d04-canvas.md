___

<strong>Javascript</strong>
<h3>Canvas</h3>

---


##Summary

Below is a sample HTML page with a canvas element that will draw a rectangle.
```html
<body>
  <canvas id='myCanvas' width='400' height='400'></canvas>

  <script>
    var canvas = document.getElementById('myCanvas');
    var ctx = canvas.getContext('2d');

    ctx.fillRect(0, 200, 20, 10);

  </script>
</body>
</html>
```

##Discussion

When you begin drawing an item, remember that you need to `beginPath(x, y);` and then `ctx.fill();` finish filling in the drawing. Any code you want to use to draw should go inbetween these functions.
```javascript
var canvas = document.getElementById('myCanvas');
var ctx = canvas.getContext('2d');
ctx.beginPath(0, 0);
// draw some other paths and such
// then end it
ctx.fill();
```

##Examples

**Here is how you draw a circle**

```javascript
//ctx.arc(xposition, yposition, radius, 0, Math.PI*2, true);
//if you don't know what radius means, just know that a bigger
//radius will make a bigger circle, and 50 is a good starting point
ctx.arc(75,75,50,0,Math.PI*2,true);
```


## References

Your references may be placed here. Please place them in an unordered list and add a quick summary of each.

- <a href="https://developer.mozilla.org/en-US/docs/Web/API/Canvas_API/Tutorial">MDN Canvas Tutorial</a>

## Further Resources

- https://developer.mozilla.org/en-US/docs/Web/API/Canvas_API/Tutorial/Drawing_shapes
- http://www.effectgames.com/demos/canvascycle/
