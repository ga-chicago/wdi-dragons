
#### 5.4 CRUD Controllers

When building out an application, it sure is nice to have a starter template. Here is a CRUD controller template to get you started! It includes appropriate GET and POST methods for CREATE, READ, UPDATE, and DESTROY. The Index is designed to list all items.


```ruby
class Controller < ApplicationController

	# list all
	get '/' do
		erb :index
	end

	# create
	get '/create' do
		erb :create
	end

	post '/create' do
		erb :create_success
	end

	# read
	get '/read' do
		erb :read
	end

	# update
	get '/update' do
		erb :update
	end

	post '/update' do
		erb :update_success
	end

	# destroy
	get '/destroy' do
		erb :destroy
	end

	post '/destroy' do
		erb :destroy_success
	end

end
```
