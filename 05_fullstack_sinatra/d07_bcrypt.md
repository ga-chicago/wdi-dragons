## 5.7 BCrypt Example

* The following source code may be found at [https://github.com/ga-chicago/sinatra_cru](https://github.com/ga-chicago/sinatra_cru) on the **ga-chicago** organization. This demonstrates actual use in a Sinatra application.

```Ruby
# how does bcrypt work under the surface?

require 'bcrypt'
# our password is turkey dinner
# it needs some salt to give flavour
salt = BCrypt::Engine.generate_salt
p salt

pwd = 'hooloovoo42'
# bcrypt combines salt + password
combined_password = pwd + salt
p combined_password

# we encrypt our password as a hash
# hash_secret does the above!
# hash_secret makes our combined password
# and generates a hash for us
hash = BCrypt::Engine.hash_secret(pwd, salt)
p hash

#login
# first off, you need the user's salt
# save it to db, cookie, etc
# may need to have a way to reset
# usr passes in their password

## users_entry = params[:password]
# compare hash in db
# compare results
# look in postm /login: https://github.com/ga-chicago/sinatra_crud/blob/master/controllers/UsersController.rb

```
