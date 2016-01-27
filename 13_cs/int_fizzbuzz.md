# UtiNii!

![http://cdn.akamai.steamstatic.com/steamcommunity/public/images/avatars/ee/ee12f650ebce9e2631ff86a3cb235bb7147bf644_full.jpg](http://cdn.akamai.steamstatic.com/steamcommunity/public/images/avatars/ee/ee12f650ebce9e2631ff86a3cb235bb7147bf644_full.jpg)

- Write a program that prints the numbers from 1 to 100.
- But for multiples of three print “Uti” instead of the number and for the multiples of five print “Nii!”.
- For numbers which are multiples of both three and five print “UtiNii!”

#### Solution in Ruby

```ruby
1.upto(100) do |i|
  if i % 5 == 0 and i % 3 == 0
    puts "UtiNii!"
  elsif i % 5 == 0
    puts "Uti"
  elsif i % 3 == 0
    puts "Nii!"
  else
    puts i
  end
end
```
