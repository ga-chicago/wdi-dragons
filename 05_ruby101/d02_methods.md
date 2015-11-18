## 4.2 Methods (and the `*SPLAT!` argument)

Below are the examples built in class:

```ruby
# taking a look at SPLAT

def all_the_things(*things)

  things.each do |thing|
    puts thing
  end

end

all_the_things('random', 90, 'hooloovoo', 'ocean at the end of the lane', :stuff)

def name_builder(first_name, last_name, *misc)
  puts '----'
  puts misc

  misc.each do |item|
    puts item
  end
  return 'Welcome to the world, ' + first_name + ' ' + last_name
end

name_of_child = name_builder('lichard', 'slacken', [42, 'lol', :lol], 'meow', 'haters gunna hate')
puts name_of_child

cereals = ['count chocula', 'booberry', 'frankberry', 'MONSTERRRRRRR AHHHH', 'fruity yummy mummy']

def list_breakfast(food, *appetizers)

  puts food
  puts appetizers
  return appetizers

end

yum = list_breakfast(cereals, 'eggs', 'bacon', 'bloody mary')
puts yum


# define a singleton method on an object

steve_ballmer = Object.new

steve_ballmer.define_singleton_method(:get_excited) do
  puts 'DEVELOPERS DEVELOPERS DEVELOPERS WOOO YEAAHHH'
end

steve_ballmer.get_excited


puts '---- objectsssss with methods -----'

server = Object.new

def server.output_data
  puts '101001101010101001011111101010110101010101'
end

def server.say_hello(name)
  puts 'Hello, ' + name
end

server.output_data
server.say_hello('jimbo jones 1 @ github')
```
