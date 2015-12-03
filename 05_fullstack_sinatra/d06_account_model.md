## 5.6 Building an Account Model

#### Video (47 minutes long!)

* https://youtu.be/1G0YalgHK84

#### Database Migration

```sql
CREATE DATABASE bee_crypt_bzz;
\c bee_crypt_bzz
CREATE TABLE accounts (id SERIAL PRIMARY KEY, user_name VARCHAR(255), user_email VARCHAR(255), password_digest VARCHAR(255), is_admin BOOLEAN);
\dt
```

#### Account Model

```ruby
class Account < ActiveRecord::Base

  include BCrypt #bzzzzzzz

  # setter for password
  # define password = pwd (arg)
  # Account.password = 'meowington42hooloovooBlue@u'
  def password=(pwd)
    # set the password_digest column
    # to BCrypt's Password.create method
    # using the user's input of `pwd`
    self.password_digest = BCrypt::Password.create(pwd)
  end

  # getter for password
  # define method to return password
  # Account.password
  def password
    BCrypt::Password.new(self.password_digest)
  end

  # create a method to test if we are allowed authorization
  # so we need to authenticate
  # we log in with a user_name & password..
  # this method handles all that on the backend!
  # awww yissss
  # Usage: Account.authenticate('james', '42hooloovoo4U')
  # Usage: Account.authenticate(params[:username], params[:password])
  def self.authenticate(user_name, password)
    # search for user
    # Account model.find_by column name with value to search
    current_user = Account.find_by(user_name: user_name)
    # return our current user IF passwords match
    if (current_user.password == password)
      return current_user
    else
      return nil
    end
  end

end
```
