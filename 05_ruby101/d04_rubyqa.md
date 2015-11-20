## 4.4 Ruby Q&A

#### Recap Video

* https://www.youtube.com/watch?v=GHsJbm3m1fQ

#### Classes

```ruby
# Classes - getting and setting
class User
  attr_accessor :name, :email, :password
# initialize optional
  def initialize(name, email, password, array)
    @name = name
    @email = email
    @password = password
    @array = array
  end
# WAT
  def change_array
    @a = @array
    @b = @array
    p @a.each{|word| p word.upcase!}
    @a += ["anything"]
    p @b
    p @a
    p @array
  end
end
adriana= User.new("adriana", "adri@gmail.com","password123",["hello"])
p adriana.name
p adriana.name= "adrian"
adriana.change_array
```
