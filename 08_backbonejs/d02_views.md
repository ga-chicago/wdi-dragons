## Backbone.js Views, Again

### 1. What is a view and what problem is it trying to solve? (10min)
---

**Q**: What is a view?

**Q**: What problem do you think it is trying to solve?

- A **view** is just a small piece of your website.
- They organize your website's interface into logical views.
- They are meant to be re-drawn without needing to load a webpage.
- They keep you from having to refresh your page!
- Small individual pieces can be updated on their own terms.

---
### 2. What is Backbone.js and how do I use it?
---

- It is a library created by Jeremy Ashkenash
- JS Framework designed to work with Ruby easily
- Lightweight; it provides **tools**.
- No design patterns or usage is enforced.
- It contains **models**, **views**, **collections**, and **routers**.
- It is a mv*/m-v-whatever/mvc like framework.
- Underscore.js is required to use it (also written by Ashkenash)

####Get Underscore/Backbone
- We are going to create a BackboneJS boilerplate page for you to use!
- We like boilerplates, right?
- Browse to github and select **create new repository** named *BackboneBoilerplate*
- `git clone` repository to `/dev/wdi`
- `touch index.html`
- `atom index.html`
- Create `<head>` with `<script>` tags for:
  - google: cdn jquery
  - google: cdn underscore.js
  - google: cdn backbone.js
- Save index.html
- Add, commit, and push to git! ...`git add .`, `git commit -m ""`, `git push origin masdter`
- Every time you want to do create a page, application, or just play around you can re-use this boilerplate!



---
### 3. Backbone.js Views
---

#### Backbone.js's parts

####Properties
<table>
  <thead>
    <td>*Name*</td>
    <td>*Description*</td>
  </thead>
  <tr>
    <td>**el**</td>
    <td>Corresponding DOM element that represents this view. It can already exist or if not, it will be created for you.</td>
  </tr>
  <tr>
    <td>**tagName**</td>
    <td>Specific tag that will be created for this views *el*</td>
  </tr>
  <tr>
    <td>**className**</td>
    <td>CSS class that will be applied to this views's *el*</td>
  </tr>
  <tr>
    <td>**id**</td>
    <td>CSS ID that will be applied to this view's *el*</td>
  </tr>
  <tr>
    <td>**$el**</td>
    <td>A cached jQuery object for the view's element.</td>
  </tr>
  <tr>
    <td>**attributes**</td>
    <td>A hash of attributes that will be set as HTML DOM element attributes on the view's *el* (id, class, data-properties, etc.)</td>
  </tr>
  <tr>
    <td>**template**</td>
    <td>A template or reference to a template for use with the *render()* method</td>
  </tr>
</table>

####Methods
<table>
  <thead>
    <td>*Name*</td>
    <td>*Description*</td>
  </thead>
  <tr>
    <td>**constructor**</td>
    <td>Accepts several options that will be attached to the view automatically.
  </tr>
  <tr>
    <td>**initialize()**</td>
    <td>An optional function that is called the moment a view is instantiated.</td>
  </tr>
  <tr>
    <td>**render()**</td>
    <td>A function to render your view as HTML into the DOM.</td>
  </tr>
  <tr>
    <td>**remove()**</td>
    <td>Removes this View from the DOM</td>
  </tr>
</table>


#### Reviewing a View

- Now, we're going to take a look at what a view in Backbone.js looks like.
- Then you'll find out what it can do!
- What parts do you see?

*file:*
```javascript
var LogoView = Backbone.View.extend({
  tagName: "div",
  className: "column",
  template: _.template("<h1><%= brand %></h1>"),
  initialize: function() {
    this.render();
  },
  render: function() {
    var data = {brand:"Logo Goes Here"};
    var renderedTemplate = this.template(data);
    this.$el.html(renderedTemplate);
  }
});

var logo = new LogoView({
  el: $('body')
});
```
