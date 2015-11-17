## 4.1 Strings, Arrays, & Hashes

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

Let's take a look at that again...

```ruby
# arrays!
pirates = ['Blackbeard', "Blue beard", "James Cook"]
pirates[0]
pirates[0] = 'Blackbeard is DEAD'
nums = Array(1..10)
letters = Array('a'..'z')
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
