##Authentication
When we talk about passwords, the commonly used word is "encryption", although the way passwords are used, most of the time, is a technique called "hashing". Hashing and Encryption are pretty similar in terms of the processes executed, but the main difference is that hashing is a one-way encryption, meaning that it's very difficult for someone with access to the raw data to reverse it.  


|     | Hashing |   Symmetric Encryption -|  
|-----|---------|-----------------------|
|     |One-way function | Reversible Operation |
|Invertible Operation? |    No, For modern hashing algorithms it is not easy to reverse the hash value to obtain the original input value | Yes, Symmetric encryption is designed to allow anyone with access to the encryption key to decrypt and obtain the original input value |

##Rails Authentication
```bash
gem 'bcrypt', '~> 3.1.2'
bundle
rails g model User email password_digest
rake db:migrate
```
The field `password_digest` will be used to store the "hashed password", we will see what it looks like in a few seconds but know that the original password will never be stored.  The logic for hashing a password the right way would be quite long to implement manually, so instead, we will just add a method provided by `bcrypt-ruby` to enable all the hashing/storing the hash logic, and we will add a validation for the email:

In app/models/user.rb :

```ruby
class User < ActiveRecord::Base
 has_secure_password
 validates :email, presence: true, uniqueness: true
end
```
Now that we added this method `has_secure_password` to the user model, we can use two "virtual" attributes on the model, `password` and `password_confirmation`.


```
rails g controller users index new create
```

In "controllers/users_controller.rb":  

```ruby
class UsersController < ApplicationController
 def index
  @users = User.all
 end

 def new
  @user = User.new
 end

 def create
  @user = User.new user_params
  if @user.save
   redirect_to users_path
  else
   render 'new'
  end
 end

 private
   def user_params
    params.require(:user).permit( :email, :password, :password_confirmation)
   end

end
```
In "config/routes.rb":  

```
resources :users, only: [:new, :index, :create]
```

In "views/users/index.html.erb":

```erb
<h1> Users index </h1>
<% @users.each do |user|%>
  <%= user.email %>
  <%= user.password_digest %>
<% end %>
```

In "views/users/new.html.erb":

```
<h1>Sign Up</h1>
<%= form_for @user do |f| %>
  <% if @user.errors.any? %>

    <h2>Form is invalid</h2>
    <ul>
      <% for message in @user.errors.full_messages %>
      <li><%= message %></li>
      <% end %>
    </ul>

  <% end %>

    <%= f.label :email %>
    <%= f.text_field :email %>

    <%= f.label :password %>
    <%= f.password_field :password %>

    <%= f.label :password_confirmation %>
    <%= f.password_field :password_confirmation %>
    <%= f.submit %>
<% end %>
```

#### Sessions Controller

Now to allow the user to login and out, we will need to create a sessions controller:

```bash
rails g controller sessions new create destroy
```

Now we can create routes for this controller.  In "routes.rb" you should now have:

```ruby
root "users#index"
resources :users, only: [:new, :index, :create]

get 'login', to: 'sessions#new'
resources :sessions, only: [:new, :create, :destroy]
```

In "sessions_controller.rb" we'll need to add some logic to handle the user's input for email and password:  

```ruby
class SessionsController < ApplicationController
 def new
 end

 def create
  user = User.find_by_email(params[:email])
  if user && user.authenticate(params[:password])
    redirect_to root_path
  else
   render "new"
  end
 end

 def destroy
  redirect_to root_url, notice
 end

end
```
Now we need to add a log out form:

In "views/sessions/new.html.erb":

```erb
<h1>Login</h1>
<%= form_tag sessions_path do %>
    <%= label_tag :email %>
    <%= text_field_tag :email %>
    <%= label_tag :password %>
    <%= password_field_tag :password %>
    <%= submit_tag "Log in" %>
<% end %>
```
In Application controller write:
```
 def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def authorize
    unless current_user
      redirect_to login
    end
  end
```

And you're done!
