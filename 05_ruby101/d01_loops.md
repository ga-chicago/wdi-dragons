## 4.1 Loops

#### While Loop

```ruby

n = 1
while n < 11
  puts n
  n += 1
end
```

#### Until Loop

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
