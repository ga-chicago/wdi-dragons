## Backbone.js Views

- A **view** is just a small piece of your website.
- They organize your website's interface into logical views.
- They are meant to be re-drawn without needing to load a webpage.
- They keep you from having to refresh your page!

## Attributes and Abilities

#### Properties

<table>
  <thead>
    <td><em>Name</em></td>
    <td><em>Description</em></td>
  </thead>
  <tr>
    <td><strong>el</strong></td>
    <td>Corresponding DOM element that represents this view. It can already exist or if not, it will be created for you.</td>
  </tr>
  <tr>
    <td><strong>tagName</strong></td>
    <td>Specific tag that will be created for this views *el*</td>
  </tr>
  <tr>
    <td><strong>className</strong></td>
    <td>CSS class that will be applied to this views's *el*</td>
  </tr>
  <tr>
    <td><strong>id</strong></td>
    <td>CSS ID that will be applied to this view's *el*</td>
  </tr>
  <tr>
    <td><strong>$el</strong></td>
    <td>A cached jQuery object for the view's element.</td>
  </tr>
  <tr>
    <td><strong>attributes</strong></td>
    <td>A hash of attributes that will be set as HTML DOM element attributes on the view's *el* (id, class, data-properties, etc.)</td>
  </tr>
  <tr>
    <td><strong>template</strong></td>
    <td>A template or reference to a template for use with the *render()* method</td>
  </tr>
</table>

#### Methods

<table>
  <thead>
    <td><em>Name</em></td>
    <td><em>Description</em></td>
  </thead>
  <tr>
    <td><strong>constructor</strong></td>
    <td>Accepts several options that will be attached to the view automatically.
  </tr>
  <tr>
    <td><strong>initialize()</strong></td>
    <td>An optional function that is called the moment a view is instantiated.</td>
  </tr>
  <tr>
    <td><strong>render()</strong></td>
    <td>A function to render your view as HTML into the DOM.</td>
  </tr>
  <tr>
    <td><strong>remove()</strong></td>
    <td>Removes this View from the DOM</td>
  </tr>
</table>
