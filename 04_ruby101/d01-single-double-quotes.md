## 4.1 Single Quotes vs Double Quotes


#### String Interpolation

The usage of double quotes allows you to use **string interpolation**. This is essentially *templating for strings*. Example:

```ruby
world = 'Saturn'
"Hello, #{world}"
```

This example **will not** work with single quotes.

#### Escaping Characters

The usage of double quotes allows you to **escape** any/all characters in a string. Example:

```ruby
puts 'a\nb' # just print a\nb
puts "a\nb" # print a, then b at newline
```

Using single quotes will only allow you to escape **other** single quotes. Example:

```ruby
puts 'this is james\'s favourite subject'
```
