##Validations
Validations go in your model files.

example:
```
class User < ActiveRecord::Base
  has_many :songs

  validates :name,  presence: true, length: { in: 2..30 }
  validates :email, uniqueness: true, confirmation: true
  validates :email_confirmation, presence: true
end
```

##Independent Practice
* Make your own app with at least one join table.
* Use at least 3 different validations.
* Seed your database using the seed file and `rake db:seed` command.
* Test everything in rails console.
