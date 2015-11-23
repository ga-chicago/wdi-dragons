## 4.2 Enumeration, Again

Below are the examples used in class:

```ruby
who_was_sleepy = ['anna', 'nick', 'ruth', 'lidia', 'everyone']

who_was_sleepy.each do |person|
  puts person
end

ninja_turtles = ['donatello', 'leonardo', 'michaelangelo', 'raphael']

#  + ' says \'cowabunga dude\''
ninja_turtles.each do |turtle|
  puts turtle + ' says \'cowabunga dude\'!'
end

#introducing hash rockets
# and introducing symbols!
good_news = {
  :happiness => 'EDM Festivals',
  :favourite_thing => 'ginger tea',
  :something_nice => 'kittens are adorable'
}

good_news.each do |item|
  puts item
end


#turn a symbol into a string
:happiness.to_s
```
