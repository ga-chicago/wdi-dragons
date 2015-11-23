## 4.2 Stephen's Class Notes

#### Accessors

* **Accessors**: create getters and setters for instance variables
* **attr_reader** —> creates getter
* **attr_writer** —> creates setter
* **attr_accessor** —> creates both getter & setter

#### Variables

* **local** —> lives within the space it is declared in
* **$global** —> can be accessed from anywhere
* **@instance** —> can be accessed by all methods in INSTANCE of that class
* **@@class** —> can be accessed by class & all instances of that class

#### Methods

* Class methods (can only be called on class)

```ruby
def self.method_name
end
```

* Instance methods (can only be called on instance of class)

```ruby
def method_name
end
def initialize(arguments)
end
```
(populates new instance with whatever info you set here)
