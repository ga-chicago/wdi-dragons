
___

<strong>HTML & CSS</strong>
<h3>Basic HTML</h3>

---

## Tag Structure

![tags.png](tags.png)

![tags_attributes.png](tags_attributes.png)

## Base HTML Page:
```html
<html>
  <head>
    <title>My webpage</title>
    <link rel="stylesheet" href="css/style.css">
  </head>
  <body>
    <header>
    Insert some sort of logo.
    </header>
    <section>
      <div id="column1">
      </div>
      <div id="column2">
      </div>
    </section>
    <footer>
      &copy; 2015 you!
    </footer>
  </body>
</html>

```

## Base CSS Stylesheet:
```css
header {
}
section {
}
div {
  position: relative;
}
#column1 {
  position: relative;
  float: left;
}
#column2 {
  position: relative;
  float: left;
}
footer {
}
```

##HTML5 Tags

- `<header></header>`
  - Contains header information, logo, other important top of page details.
- `<footer></footer>`
  - Opposite of header; copyright information, contact, legal, etc.
- `<section></section>`
  - Specialized div tag
  - Container and is a part of a page
  - contains a single or multiple `<article></article>` or `<div></div>` tags.
- `<nav></nav>`
  - Contains navigation links, menus, and elements
