## 4.1 Enumeration

#### .each

* Used to perform task on each element... but I don't need a new array

```ruby
names = ['Andy', 'Pandy', 'Dandy']

names.each do |specific_name|
  puts specific_name.upcase  # name has the value of a specific name
end

names.each { |specific_name| puts specific_name.upcase }
```

{ is replacing the do

} is replacing the end

## .each

Returns the original array

```ruby
same_as_original = names.each do |specific_name|
  puts specific_name.upcase  # name has the value of a specific name
end

same_as_original = names.each { |specific_name| puts specific_name.upcase }
```

{ is replacing the do

} is replacing the end


## .map

Used to perform task on each element, and I want a new array of modified data

```ruby
names = ['Andy', 'Pandy', 'Dandy']

modified_data = names.map do |specific_name|
  specific_name.upcase  ## builds new array... of last values in the block
end

names = ['Andy', 'Pandy', 'Dandy']
initals = names.map {|name| name[0] }
```

## Examples

```ruby
three_woodstocks = 3.times.map{ |num| "Woodstock #{num}" }
five_hun_woodstocks = 500.times.map{ |num| "Woodstock"}

['Hi', 'There'].map{ |word| "Woodstock #{word}" }

10.times.map{ |taco| "How many tacos! #{taco}" }

['Hi', 'There'].reverse.map{ |num| "Woodstock #{num}" }

funky_fresh = ['Hi', 'There'].reverse.map do |num|
  "Woodstock #{num}"
end.join('-').chars.reverse.join(':)')
```

## Getting Weird

```ruby
names = ['Andy', 'Pandy', 'Dandy']

names.each do |name|
  puts name
end.each do |name|
  puts "#{name} is great!"
end.map do |name|
  "#{name} is awesome!"
end.push("you are awesomest :)").join(' and ').upcase << "!"
```
