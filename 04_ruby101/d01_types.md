## 4.1 Detecting Ruby Types

```ruby
#!/usr/bin/ruby

h = { :name => "Lichard", :age => 28 }

p true.class, false.class
p "Ruby".class
p 1.class
p 4.5.class
p 3_463_456_457.class
p :age.class
p [1, 2, 3].class
p h.class
```
