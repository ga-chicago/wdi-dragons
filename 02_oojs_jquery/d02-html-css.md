## Sample HTML & CSS Layout

This layout uses floats to create a two column (content and sidebar) layout that may be used for any future project!

*index.html*
```html
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <title>Box Model Intro</title>
    <link rel='stylesheet' href='style.css'>
  </head>
  <body>

  <div id='wrapper'>
    <header id='logo'>
      Random Website Goes Here
    </header>
    <nav id='navbar'>
      Links to places will go here!
    </nav>
    <section id='content'>
      Lorem Ipsum Text
    </section>
    <aside id='sidebar'>
      <ul>
        <li>things</li>
        <li>to</li>
        <li>do</li>
      </ul>
    </aside>
    <footer id='goodbye'>
      Copyright nobody 2015...
    </footer>
  </div>

  </body>
</html>

```

*style.css*
```css
/* ids are identifiable using a #name */
#wrapper {
  width: 90%;
  margin-left: auto;
  margin-right: auto;
  position: relative;
  /*margin: auto;*/
}
#logo {
  font-size: 3em;
  font-weight: bold;
  border: 3px dashed orange;
  margin: 3px;
}
#navbar {
  font-size: 1.5rem;
  font-weight: bold;
  border: 3px dashed purple;
  margin: 3px;
}
#sidebar {
  float: right;
  border: 3px dashed green;
  margin: 3px;
  width: 25%;
}
#content {
  float: left;
  border: 3px dashed navy;
  margin: 3px;
  width: 65%;
}
#goodbye {
  margin: 3px;
  border: 3px dashed red;
  clear: both;
}
```
