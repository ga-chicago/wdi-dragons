
## 4.1 Conditionals

* if/elsif/else/end
* unless
* Unless you're using a one-liner then you need to end your if statement with and 'end' statement.

```ruby

x = 2

if x < 3
  puts 'less than 3'
end

* Writing the same thing as a one-liner

if x < 3 then puts 'less than 3' end
puts 'less than 3' if x < 3

* Using elsif

if x < 2
  puts "less than 2"
elsif x == 2
  puts "It's two!"
else
  puts 'greater than two!'
end
```

* Unless
* My own personal preference is to avoid the 'not' operator and state conditions in the positive. Using the 'unless' keyword is great for this.

```ruby
x = true

puts "it's true!" if x != false

unless x == false
  puts "it's true!"
end
```

* Unless can also be used as a one-liner

```ruby
puts "it's true!" unless x == false
```

*** You cannot use elsif with unless, only else ***

```ruby
unless x == false
  puts "it's true!"
else
  puts "it's false!"
end


unless x == false
  puts "it's true!"
elsif
  puts "it's false!"
end

#returns an error
```

#### More Examples

```ruby
num_of_pizzas= 7

def num_of_slices(pizza_count)
  pizza_count * 8
end

slices_per_person = 3
total_num_of students =14

def totalslices
  num_of_slices * num_of_pizzas
end

if totalslices / 3 > 14
  puts we have enough slices!
else
  puts we dont have enough slices!
end
```
