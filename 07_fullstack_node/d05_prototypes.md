##Protoypes
Prototypes are used in javascript for inheritance instead of classes.
Below is some code written in ruby and javascript so you can compare how to do inheritance in each language.

```ruby
class Animal
  attr_reader :kingdom, :cellular_structure
  attr_accessor :legs
  def initialize(legs)
    @kingdom = "Animalia"
    @cellular_structure = "Eukaryotic animal cells"
    @legs= legs
  end
end

class Dog<Animal
  attr_reader :sound

  def initialize(legs=4)
    super
    @sound = "bark"
  end

  def speak
    @sound
  end
end


fatso= Dog.new
p fatso.sound
p fatso.speak
p fatso.kingdom
```

```javascript
function Animal(legs){
        this.kingdom= "Animalia"
        this.cellular_structure= "Eukaryotic animal cells"
        this.legs= legs
    };

 function Dog(sound){
    this.legs= 4
    this.sound= sound
    this.speak= function speak(){
        return sound
    }
};

Dog.prototype = new Animal(4);

var fatso = new Dog("bark");

console.log(fatso.kingdom)
console.log(fatso.speak())
console.log(fatso.sound)
console.log(fatso.legs)
```
