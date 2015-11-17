___

<strong>Ruby</strong>
<h3>Classes in Ruby</h3>

---

##Scope

  1. Defining a class
  2. Creating an instance of a class
  3. Define what an instance variable is
  4. Define what a class variable is
  3. Implementing a setter (mutator) and getter

**Class**: A class is instructions (a blueprint) for building an object. As a class, I can inherit abilities from another class. A class is just an Object.

To create a class, we need to build a skeleton out:

```ruby
class MyClassName
  #stuff goes here
end
```

To create a new instance of `MyClassName`, I would:

```ruby
my_awesome_class = MyClassName.new()
```

Each class may have a constructor. That constructor's method name is a *reserved* word in Ruby called `initialize`. This constructor can expect arguments passed into the `.new()` method.

```ruby
class MyClassName

  def initialize(message)
    puts message
  end

end

my_awesome_class = MyClassName.new("Hello, world!")
```

If we wanted to create an **instance variable** for message, we could do so. An instance variable is just a variable assigned to whatever *new* object created based on each new class. In the following example, we will create an instance variable for message. Instance variables are preceded with `@`.

```ruby
class MyClassName

  def initialize(message)
    @message = message #instance variable
  end

end

my_awesome_class = MyClassName.new("Hello, world!")
my_other_class = MyClassName.new("oh, hello friends")
```

`my_awesome_class` and `my_other_class` have two *different* values for their `@message` instance variables.

We can also create **class variables**, variables that apply to *all* instances of a class. These are not used anywhere near as much as instance variables but may be declared using `@@variable_name`.

```ruby
class MyClassName

  def initialize(message)
    @@all_classes_have_me = message #class variable
  end

end

my_awesome_class = MyClassName.new("Hello, world!")
my_other_class = MyClassName.new("oh, hello friends")
```

Finally, to get/set data in our instance variables, we need to create **getter** and *setter* methods. Mutator is another word for setter.

```ruby
class MyClassName

  def initialize(message)
    @message = message #instance variable
  end

  #getter - calling myClass.message returns @message
  def message
    @message
  end

  #setter - calling myClass.message = "stuff" changes @message
  def message=(new_message)
    @message = new_message
  end

end

my_awesome_class = MyClassName.new("Hello, world!")
my_awesome_class.message # => "Hello, world!"
my_awesome_class.message = "new message"
my_awesome_class.message # => "new message"

```
