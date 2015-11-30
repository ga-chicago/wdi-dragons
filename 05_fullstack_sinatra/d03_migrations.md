## 5.3 Migrations

#### Gemfile

```ruby
source 'https://rubygems.org'

gem 'sinatra'
gem 'pg' #postgresql
gem "sinatra-activerecord" #activerecord orm
gem 'activesupport'
gem 'activerecord'
gem 'rake'
```

#### User Model

```ruby
class User > ActiveRecord::Base
end
```

#### config.ru
```ruby
require './app'
require './models/user'
run Sinatra::Application
```

#### app.rb
```ruby
require 'bundler'
Bundler.require
ActiveRecord::Base.establish_connection(
  :adapter => 'postgresql',
  :database => 'crud'
)
```

#### Rakefile.rb

```ruby
require "sinatra/activerecord/rake"
namespace :db do
  task :load_config do
    require "./app"
  end
end
```

#### Migration

```ruby
class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
    end
  end
end
```
