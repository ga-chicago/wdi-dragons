## 5.7 Classes, Revisited

#### Getting and Setting

```Ruby
# Classes - getting and setting
class User
  attr_accessor :name, :email, :password
# initialize optional
  def initialize(name, email, password, array)
    @name = name
    @email = email
    @password = password
    @array = array
  end
# WAT
  def change_array
    @a = @array
    @b = @array
    p @a.each{|word| p word.upcase!}
    @a += ["anything"]
    p @b
    p @a
    p @array
  end
end
adriana= User.new("adriana", "adri@gmail.com","password123",["hello"])
p adriana.name
p adriana.name= "adrian"
adriana.change_array
```

#### Exercise

1. Create a class for pea plants
2. You have 2 instance variables:
  - number_of_leaves
  - flower_colour
3. Create three different generations using classes
4. The first plant should have 4 leaves and white flowers
5. The second plant should have 5 leaves and pink flowers
6. The third plant should have 2 leaves and orange-mutated flowers
7. Instantiate each and call their `to_s` method.
8. Use `attr` helpers to change the `Ancestor`'s `@eye_gene`.
9. On each of your instantiated classes, call the `to_s` method again.
10. Describe the effect you see here.

#### Example

```ruby
class Ancestor

  def initialize
    @eye_gene = 'blue eyes'
    @hair_gene = 'black hair'
    @name = 'Eldin Webber'
  end

  def to_s
    return 'My name is ' + @name + ' and I have ' + @eye_gene + ' and ' + @hair_gene
  end

  def viking_slayer
    return 'I AM CONQUEROR!!! ROARRRRR!!!!!21212'
  end

end

class You < Ancestor
  def draw_things
    return 'drawing the coolest shit'
  end
  # def initialize
  # end
  def birth
    @name = 'Marty'
  end
end


class Jamesette < You

  def birth
    @name = 'Jamesette'
    @hair_gene = 'red hair'
  end

end

eldin = Ancestor.new
p eldin.to_s

marty = You.new
marty.birth
p marty.to_s

daughter = Jamesette.new
daughter.birth
p daughter.to_s
p daughter.viking_slayer
```
