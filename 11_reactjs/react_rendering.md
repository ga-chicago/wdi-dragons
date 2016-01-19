## Render basic React components using the ReactDOM

We've created a few React components using JSX together and assigned them to variables. Now, we need to use the **ReactDOM** to render elements on our page.

This may be a bit confusing, so before we start understand that you write components in React. You will Render the React Components to client side code using the ReactDOM. The ReactDOM then places the final component on your webpage's DOM.

Now, let's take a look at an overview of how to render with the **ReactDOM**:

```Javascript
ReactComponent render(
  ReactElement element,
  DOMElement container,
  [function callback]
)
```

* The *ReactElement* argument is our component (which we defined above). This is the variable name we gave our component when we declared one using `React.createClass({});`
* The *DOMElement* container is a Javascript selector for the HTML container to place our component inside. Example: `document.getElementById('id-to-place-this')`
* The *Callback* is a function that can be hooked in to call once the render function has been completed.
* Do not ever, ever render to the `body` tag. It is not best practice.
Let's work through the examples we created earlier and render them.

*Example #1:*

```javascript
ReactDOM.render(
	<Message name="World" />,
    document.getElementById('message-container')
);
```

*Example #2:*

```javascript
ReactDOM.render(
	<Article headline='zomg news' description='Some news is here...' />,
	document.getElementById('item-container')
);
```

*Example #3:*

```javascript
ReactDOM.render(
	<Item title='Star Wars Ticket' description='A long time ago, in a galaxy far, far away...' />,
	document.getElementById('item-container')
);
```
