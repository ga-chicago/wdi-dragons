## 5.3 Model CRUD with Active Record

#### Getting Started

You need to include the following libraries in your **Gemfile**:

```ruby
gem 'pg' #postgresql
gem "sinatra-activerecord" #activerecord orm
```

#### Establishing Connection

In your application file, you need to establish a connection to your database using ActiveRecord. We do so by calling the `establish_connection` method that ActiveRecord provides. We'll pass in the following arguments:

- `:adapter => "postgresql"`
- `:database => "your_db_name_here"`

That's it! From here on out, you can query and modify the database with ease!

#### CRUD

CRUD stands for 'create', 'read', 'update' and 'destroy'. You perform these actions on tables inside of your database. Let's imagine that you have the following SQL table named *Sms*:

```
id  | message                | sender
-------------------------------------------------
1   | "Hi there!"            | "Kathew"
2   | "sup man."             | "Lichard"
3   | "Just learned Rails!"  | "Kathew"
4   | "hey you guys!"        | "Cecelious"
```

#### Create
```ruby
sms = Sms.new # create a new
sms.message = "Hi there!" # add values
sms.sender = "Kathew"
sms.save      # saves to the database
```

#### Read


**Hash Recap**
```ruby
obj = { id: 3, message: 'Hi there!', sender: 'Kathew' }
```

**Accessing values via symbols Recap**
```ruby
obj[:message]
# => 'Hi there!'
obj[:message] + " (sent from " + obj[:sender] + ")"
# => "Hi there! (sent from Kathew)"
```

**Find an object in a list of objects**

```ruby
sms = Sms.find(2) # find by id
# => sms = { id: 2, message: "sup man.", sender: "Lichard" }
sms.message
# => "sup man."
sms[:message]
# => "sup man."
```

#### Update
```ruby
sms = Sms.find(4) # find by id
sms.sender = "sms ninja" # update a value
sms.save # save to database
```

#### Delete
```ruby
sms = Sms.find(1) # find by id
sms.destroy # delete from database
```
