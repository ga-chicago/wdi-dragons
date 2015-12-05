## 5.7 Class in Java

*Just for fun, here is what a class looks like in another programming language: Java.*

```Java
public class Person {
	Integer age = 0;
	String ToString() {
		String ret = "I am  " + this.age + " years old";
		return ret;
	}
}
​
Person you = new Person();
you.ToString();
// what happens?
```
