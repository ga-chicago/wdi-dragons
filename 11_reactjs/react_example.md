#### Basic React Example

Before moving forward, let's take a look at what a React.js component looks like:

```html
var Hello = React.createClass({
    render: function() {
        return <div>Hello {this.props.name}</div>;
    }
});

ReactDOM.render(
	<Hello name="World" />,
    document.getElementById('container')
);
```

This will render out to be:

```html
<section id='container'>
  Hello world
</section>
```

Now that you've seen this component, [**turn and talk**] with the person next to you and identify new abilities and attribute that you see.
