
## Using JSX to create a React component

#### Creating a Component with JSX

React uses a template language called **JSX**. It is very XML-like in structure. It is designed to abstract away complex HTML design templates into a nice, easy to use tag/attribute style syntax. For those that may be familiar with Angular directives (and how attributes are declared on a tag) this may look familiar. Let's take a look at a few JSX examples:

*Example #1:*

```JSX
<div>Would you like to buy {this.props.quantity} apples?</div>
```

*Example #2:*

```JSX
<article><h1>{this.props.headline}</h1>
<p>{this.props.content}</p>
</article>
```

That's JSX syntax. Now, let's use that syntax to build a component! To build a component, we need to declare a React class. This looks like:

```javascript
var component = React.createClass({});
```

Each component will have a `render()` function that `return`s a JSX template. Let's take a look at how that is structured in our next example.

*Example #3:*

```JSX
var Item = React.createClass({
    render: function () {
        return <article>
        <h1>{this.props.title}</h1>
        <p>{this.props.description}</p>
        </article>;
    }
});
```

Out of all of these JSX examples, what common themes do you see?

You should notice the re-use of `this.props.keyValueName`. You should also notice that the render function directly creates an XML/HTML like syntax that uses those variables to fill in values.
