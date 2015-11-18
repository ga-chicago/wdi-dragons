## 4.2 The Movie Object

Below is the Movie object we built today in class prior to learning how to use Classes.

```ruby
# require some libraries
require 'httparty'
require 'json'

# instantiate a new object called 'fetcher'
fetcher = Object.new

# http://www.omdbapi.com/?t=Interstellar&y=&plot=short&r=json
def fetcher.get_favourite_movie
  puts HTTParty.get('http://www.omdbapi.com/?t=Interstellar&y=&plot=short&r=json')

  return HTTParty.get('http://www.omdbapi.com/?t=Interstellar&y=&plot=short&r=json').to_json
end

fetcher.get_favourite_movie

def fetcher.convert_hash_to_json(hash)
  # convert a hash to json
  # return the json version
  return hash.to_json
end

test_hash = {
  :something => 'is awesome',
  :everything => 'is great',
  :enjoy => 'every day'
}

my_json = fetcher.convert_hash_to_json(test_hash)
puts my_json


def fetcher.set_url(url_to_api)
  # this.url = url_to_api
  @url = url_to_api
  return @url
end

def fetcher.get_url
  return @url
end

def fetcher.get_data
  return HTTParty.get(@url)
end

fetcher.set_url('http://www.omdbapi.com/?t=Die+Hard&y=&plot=short&r=json')
fetcher.get_data
```
