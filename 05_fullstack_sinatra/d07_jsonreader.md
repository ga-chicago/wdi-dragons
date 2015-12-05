## 5.7 JSON Reader

As requested, here is our trusty **JSONReader**!

```ruby
class JSONReader
​
  def initialize(filename)
    @json = String.new
    File.foreach(filename) do |line|
      @json = @json + line
    end
    #binding.pry
  end
​
  def to_hash
    return JSON.parse(@json)
  end
​
end
```

#### Usage

```ruby
reader = JSONReader.new('data.json') # data.json in same dir as this File
model = reader.to_hash
```
