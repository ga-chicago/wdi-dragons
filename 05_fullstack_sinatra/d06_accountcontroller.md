## 5.6 Account Controller

#### Video (57 minutes long!)

* https://www.youtube.com/watch?v=G1PvSl2CoL4

#### Source Code

* In Class: https://github.com/ga-chicago/secure_my_splat
* Reference with Controllers: https://github.com/code-for-coffee/not_broken_bcrypt

#### Controller Code

```ruby
require 'bundler' # requiring the bundler
Bundler.require   # bundle our !#$#

# establishing connection to postgresql db
ActiveRecord::Base.establish_connection(
  :database => 'bee_crypt_bzz',
  :adapter => 'postgresql'
)

# this will go in ApplicationController
enable :sessions # so easy a 5year maybe could do it

# helper method to see if username exists!
# does_user_exist(params[:user_name])
def does_user_exist(username)
  user = Account.find_by(:user_name => username)
  if user
    return true
  else
    return false
  end
end

# does our user have access to something?
def authorization_check
  if session[:current_user] == nil
    redirect '/not_authorized'
  else
    return true
  end
end

# basic template routes
get '/' do
  # for any resource i want to protect...
  # i perform an authorization_check
  authorization_check
  @user_name = session[:current_user].user_name
  # return some resource
  #return {:hello => 'world'}.to_json
  erb :index
end

get '/not_authorized' do
  erb :not_authorized
end

# registration for user
get '/register' do
  erb :register
end
post '/register' do
  # check if the user someone is trying to register exists or NOT
  if does_user_exist(params[:user_name]) == true
    return {:message => 'womp, womp... user exists'}.to_json
    # return erb :view_name
  end

  # if we make this far the user does not exist
  # let's make it!
  user = Account.create(user_email: params[:user_email], user_name: params[:user_name], password: params[:password])

  p user

  #session is a hash!
  session[:current_user] = user
  # session[:sam_is_cool] = 'fuck yeah he is'
  # session[:roger_says_hi] = 'HI ROGER'

  redirect '/' # instead of calling a view to render...
  # i want to redirect to a route
end

## login
get '/login' do
  erb :login
end
post '/login' do
  user = Account.authenticate(params[:user_name], params[:password])
  if user
    session[:current_user] = user
    redirect '/'
  else
    @message = 'Your password or account is incorrect'
    erb :login
  end
end

## logout
get '/logout' do
  authorization_check
  session[:current_user] = nil
  redirect '/'
end
```
