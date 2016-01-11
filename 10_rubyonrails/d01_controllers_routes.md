#Controllers and Routes

###Rails VS Sinatra
When a user makes a request to the browser, the web-application needs to know what content to show them.
Let's compare with code that we have previously written.
In Sinatra we defined the routes within our controller action:

```ruby
  get '/posts' do
    @posts = Post.all
    erb :'posts/index'
  end

  get '/posts/new' do
    @post = Post.new
    erb :'posts/new'
  end
```

A "route" is a combination of the path that was requested and the HTTP verb that was used to request that path.

Rails has a "routing engine" that separates this from the controller. The configuration for the routing engine is held in the file `config/routes.rb`.

```ruby

Rails.application.routes.draw do
#code goes here
end

```

All the ruby code inside the block above will be related to defining routes.

###REST 
| REST Route type | HTTP Verb | URI | ruby method name|
|-----------------|-----------|-----|-----------------|
|index|    GET    |     /posts(.:format)          |   posts#index|
|create|    POST   |     /posts(.:format)          |   posts#create|
|new|    GET    |     /posts/new(.:format)      |   posts#new |
|edit|    GET    |     /posts/:id/edit(.:format) |   posts#edit|
|show|    GET    |     /posts/:id(.:format)      |   posts#show|
|update|    PUT    |     /posts/:id(.:format)      |   posts#update|
|destroy|    DELETE |     /posts/:id(.:format)      |   posts#destroy|

###Ruby Routes
The following are all the restful routes done manually:
```ruby
get    "/posts" => "posts#index"
post   "/posts" => "posts#create"
get    "/posts/new" => "posts#new"
get    "/posts/:id/edit" => "posts#edit"
get    "/posts/:id"=> "posts#show"
put    "/posts/:id"=> "posts#update"
delete "/posts/:id"=> "posts#destroy"
```
These routes can also be written with `resources :posts`

## Independent Practice 


Re-use the application "blog" we've just created and add three routes to it manually:

* faqs
* terms_and_conditions
* team

These three routes will be accessed via a GET request. When the user is accessing a route, the browser should display the name of the route, therefore, you'll need to create the related method in a controller that renders text. 

Then, create a "categories" controller using scaffold, remove the line added in routes.rb by the generator (`resources : categories`) and re-create the seven restful routes matching the 7 methods in the categories controller manually.


