## 10.0 Rails Cheatsheet

- comment out coffeescript
- add `rspec-rails`

- `bundle`

- `rails generate rspec:install`
- `rails g rspec:install`

- `bin/rails g model Movie title:string genre:string director:string release_year:integer plot:text`

- in RSpec, `.` is a class method and `#` is an instance method

- run tests: `bin/rake spec`

#### Database Setup/Creation
- `bin/rake db:create`
- `bin/rake db:migrate`
- `bin/rake db:test:prepare`

#### RSpec Unit Test

#####Model
```ruby
class Movie < ActiveRecord::Base

	def to_s
		self.title
	end

end
```

#####Test
```ruby
require 'rails_helper'

RSpec.describe Movie, type: :model do
  #pending "add some examples to (or delete) #{__FILE__}"

	describe 'given a movie' do

		before do
			@movie = Movie.new(title: "Empire Strikes Back")
		end

		describe '#to_s' do
			it 'displays the title of the movie' do
				expectation = 'Empire Strikes Back'
				actual = @movie.to_s
				expect(expectation).to eq(actual)
			end
		end

	end

end
```


#### Setup Routes/Controllers
- `bin/rails g controller movies index show edit new`
- `bin/rails g controller welcome index`

- `bin/rails d controller movies index show edit new`
- `bin/rails g controller movies index`
- `bin/rake routes`

```bash
bin/rake routes
      Prefix Verb URI Pattern             Controller#Action
movies_index GET  /movies/index(.:format) movies#index
      movies GET  /movies(.:format)       movies#index
       movie GET  /movies/:id(.:format)   movies#show
        root GET  /                       welcome#index
```

- `rails g model User username:string password_hash:string email:string img_url:string`

` g controller users new edit show`
`bin/rake routes`
```bash
 bin/rake routes
   Prefix Verb   URI Pattern               Controller#Action
    users GET    /users(.:format)          users#index {:expect=>[:index]}
          POST   /users(.:format)          users#create {:expect=>[:index]}
 new_user GET    /users/new(.:format)      users#new {:expect=>[:index]}
edit_user GET    /users/:id/edit(.:format) users#edit {:expect=>[:index]}
     user GET    /users/:id(.:format)      users#show {:expect=>[:index]}
          PATCH  /users/:id(.:format)      users#update {:expect=>[:index]}
          PUT    /users/:id(.:format)      users#update {:expect=>[:index]}
          DELETE /users/:id(.:format)      users#destroy {:expect=>[:index]}
   movies GET    /movies(.:format)         movies#index
    movie GET    /movies/:id(.:format)     movies#show
     root GET    /                         welcome#index

```
