## What is JSX?

A JSX element compiles into what is known as a reactElement. JSX converts html style syntax into a `reactElement` class for us.

For example:
`<h1 className="emphasis" />`
compiles to:
`var element = React.createElement('h1', { className: 'emphasis '});`

#### Rendering

```javascript
ReactDOM.render(
  <h1 className="emphasis" />,
  document.getElementById('react-element')
);
```
Would be compiled to:

```javascript
ReactDOM.render(
   element,
   document.getElementById('react-element')
);
```

#### Converting HTML to JSX

Facebook has provided a tool that [converts HTML to JSX](https://facebook.github.io/react/html-jsx.html).
