___

<strong>Ruby</strong>
<h3>Intro to Ruby</h3>

---

## Scope
This document covers Strings, Hashes, Arrays, Loops, and Conditionals in Ruby.

## String
```ruby
'happy'.object_id

'happy'.gsub('ha', 'HAHAHA')
'happy'.split('')
'happy'.chars()

lichy = 'Lichard DeGray'
"My name is not #{lichy}" # String interpolation

number = 99
"#{ number } bottle#{ 's' unless number==1 } of beer on the wall... #{ number } bottle#{ 's' unless number==1 } of beer... take one down... pass it around... #{ number-1 } bottles of beer on the wall"
```

## Array

```ruby
nums = Array(1..2)    # auto-populate
letters = Array('a'..'z')   # auto-populate
my_things = ['apartment', 'laptop', 'cat', 'wii u']   # manual declaration
```

* Grab a random **sample** from an array....

```ruby
my_things.sample
```
* Access a specific item at..

```ruby
my_things.at(1)
```
* First & last...

```ruby
my_things.first
my_things.last
```

* Adding items to an Array

```ruby
arr = [1, 2, 3, 4]
arr.push(5) #=> [1, 2, 3, 4, 5]
arr << 6    #=> [1, 2, 3, 4, 5, 6]
```

* Removing items from an array

```ruby

arr =  [1, 2, 3, 4, 5, 6]
arr.pop #=> 6
arr #=> [1, 2, 3, 4, 5]

arr.shift #=> 1
arr #=> [2, 3, 4, 5]

arr.delete_at(2) #=> 4
arr #=> [2, 3, 5]

```

## Hash

```ruby
lich = {:name => 'Lichard', :age => 3}
kat = {:name => 'Kathew', :age => 3}
om = {:name => 'Omily', :age => 3}
```

* Using the hash rocket syntax
```ruby
sample_hash   = {'one'=>1,'two'=>2}
sample_hash_2 = {:one=>1, :two=>2}
```
* Using colons to create a hash will create the keys as symbols

```ruby
sample_hash_3 = {one:1,two:2}
```

* How to access a value (**have** to use bracket notation)

```ruby

sample_hash_4 = {'one'=>1,'two'=>2,'three'=>3,'four'=>4,'five'=>5}
sample_hash_4["one"]  #=> Returns 1
sample_hash_4["five"] #=> Returns 5
```
* How to change the value of an element
```ruby
sample_hash_4['one'] =  10
```

## Loops

* While loop

```ruby

n = 1
while n < 11
  puts n
  n += 1
end
```

* Until loop

```ruby
n = 1
until n > 10
  puts n
  n += 1
end
```

```ruby
sample_array = Array(1..5)
sample_array.each{|elem| puts elem}

sample_array.each do |elem|
  puts elem
  puts "The long way!!!"
end
```

```ruby
each_example = [2,3,4].each{|elem| elem ** 2}
map_example  = [2,3,4].map{|elem| elem ** 2}

p each_example
p map_example

each_example_2 = {two:2,three:3,four:4}.each{|key,value| elem ** 2}
map_example_2 = {two:2,three:3,four:4}.map{|key,value| elem ** 2}

p each_example_2
p map_example_2
```

##Conditionals

* if/elsif/else/end
* unless
* one-liners

* If/Elsif/Else

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

* Unless can also be used as a one-liner

puts "it's true!" unless x == false

*** You cannot use elsif with unless, only else ***

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
