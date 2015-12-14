##Make a simple sinatra template
Gemfile
```ruby
source 'https://rubygems.org'

gem 'sinatra'
gem 'json'
```
Config.ru
```ruby
require './app'
run Sinatra::Application
```

App.rb
```ruby
require 'bundler'
Bundler.require()

get '/' do
  "hello world"
end
```
Run the app with bundle exec rackup!

## Make an about me and favorite things
1. make a route called aboutme and one called favorites
2. in your app.rb make an array of hashes that hold things about your favorite things
3. use html and erb to list your favorite things and properties
4. use html and css to make an about me page and style your app
5. include links to your new pages in your root route '/'
