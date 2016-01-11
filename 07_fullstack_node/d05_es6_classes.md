## ES6 Classes

For now, we can only use these on the server side with **Node** or using a transpiler such as **Babel** or **Traceur**. We can play with them live in JSFiddle, too. Example: https://jsfiddle.net/codeforcoffee/qmnky6j2/1/

```javascript
'use strict'

class Apprentice {
	constructor(properties,div){
  	this.props = properties;
    this.el = document.getElementsByTagName(div)[0];
  }
  toObject(){
  	return this.props;
  }
	render(){
  	for(var prop in this.props){
    	this.el.innerHTML = this.el.innerHTML + ' ' + this.props[prop];
    }
  }
}

var obiWan = new Apprentice({color: 'blue', master: 'Qui-Gon', hair: 'bad'},'div');
console.log(obiWan.toObject());
obiWan.render();

class Master extends Apprentice {
	toObject() {
  	return 'I am not weak-minded. You will not know anything about me.';
  }
}

var quiGon = new Master({ color: 'green', hair: '...', beard: 'magnificent'}, 'div');
console.log(quiGon.toObject());
console.log(quiGon.props);
```
