## 5.2 Homework

For the first portion of your extended weekend, we have a Javascript challenge for you! This will require a lot of research and you'll likely have to look some of these terms up on MDN (and that's ok). You're going to take a look at code in Javascript that allows you to:

1. Select an image using a `<input type=file>` element
2. Convert the image into usable text (using a **Base 64 Encoding**)
3. A live, working example is here: http://ga-chicago.github.io/filereader_base64/

#### Source Code

* Project URL: https://github.com/ga-chicago/FileReader_Base64_Upload
* Clone this down to your computer
* Open the `app/index.html` in Google Chrome
* Open DevTools to inspect the source code

#### What's going on here?

* Using the Javascript FileReader API, we can upload images as Base64 strings.
* We log out the base64 string via the `event` in `line:67` of `index.html`.
* All FileReader related elements and code are contained in the `index.html` file.
* This project contains the MUI CSS framework and corresponding libraries.

#### Code Behind This

```javascript
var reader = new FileReader();
reader.onload = function (event) {
  // try to read whatever file has been 'readAsDataURL'
  try {
    // event target result is our base64 encoded type
    // this is whatever file has been reader during 'readAsDataURL'
    console.log("File as base 64:");
    console.log(event.target.result);
    // catch an error if one occurs...
  } catch (ex) {
    // output a warning in the DevTools console
    throw new Error("Couldn't convert file: " + ex);
  }
}
// read the file argument
reader.readAsDataURL(binaryData);
```

#### Homework Assignment

* Inspect how this source code works
* Create a brand new Sinatra app inside of `your_name` for this week.
* Render a `view` that allows users to convert an image into text
* Place that text version inside of a new `<input type='text'>` element as a value so users can copy/paste this.
* Create a pull request when it works.
