## Creating a Self-Validating Input Component

```javascript
var React = require('react');
var ReactDOM = require('react-dom');
var $ = require('jquery');

// basic react outline
var IntegerInput = React.createClass({
  // runs first! we want to give our component 'state'
  getInitialState: function() {
    // set this.state.value = 42
    // this.state =sorta backbone.model.attributes
    return { value: 42, cssClass: 'form-control' };
  },
  handleChange: function(event) {
    var isInputValid = this.validate(event.target.value);
    var validationClass; // css validation class
    if (isInputValid) {
      validationClass = 'success form-control';
    } else {
      validationClass = 'error form-control';
    }
    this.setState({ cssClass: validationClass, value: event.target.value });
  },
  validate: function(val) {
    if (Number.isInteger(parseInt(val)) == false) {
      return false;
    }
    return true;
  },
  render: function() {
    var value = this.state.value;
    var cssClass = this.state.cssClass;
    return <input type="number" className={cssClass} value={value} onChange={this.handleChange} />;
  }
});

ReactDOM.render(
  <PasswordInput />,
  document.getElementById('react-element-pass')
);
```
