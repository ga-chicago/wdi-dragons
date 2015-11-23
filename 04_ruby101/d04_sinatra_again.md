## 4.4 - Sinatra, Again

We built a Sinatra API that can be viewed online!

#### Source

* https://github.com/code-for-coffee/happy_things

#### Video

* https://www.youtube.com/watch?v=l6bl7O3ELck

#### JSONReader Class

```ruby
class JSONReader

  def initialize(filename)
    @json = String.new
    File.foreach(filename) do |line|
      @json = @json + line
    end
    #binding.pry
  end

  def to_hash
    return JSON.parse(@json)
  end

end
```
