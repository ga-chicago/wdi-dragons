## Binding Events to DOM Elements

#### Declare a DOM Element to bind to (using a selector)

`var body = document.getElementsByTagName('body')[0];`

#### We need to add a listener for events to an element

###### Mouse events

```javascript
body.addEventListener('click', function(event) {
  console.log(event);
  console.log('ow, y u click me bro?');
});
```

* https://developer.mozilla.org/en-US/docs/Web/API/MouseEvent

###### Touch events

```javascript
body.addEventListener('touchstart', function(event) {
  // console.log(event);
  // touchstart
  // touchmove
  // touchend
  console.log('yo yo dude y u pokin me? wtf man');
});
```

* https://developer.mozilla.org/en-US/docs/Web/API/Touch_events

#### Keyboard events

```javascript
body.addEventListener('keyup', function(event) {
  // look for specific keys to be pressed
  if (event.keyCode == 13) {
    console.log('y u press enter so much yo?');
  }
  console.log(event.keyCode);
});
```

* https://developer.mozilla.org/en-US/docs/Web/Events/keyup
* http://www.cambiaresearch.com/articles/15/javascript-char-codes-key-codes
* http://www.kirupa.com/html5/keyboard_events_in_javascript.htm
