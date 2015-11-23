
## 4.3 Ruby: Our First Web server with Sinatra


##Agenda

*	Quiz
* Introducing Sinatra
*	Your first web server
  * Part 1: Gemfile
  * Part 2: Config.ru
  * Part 3: App.rb
* Let's run our server
* Viewing our resource


##QUIZ
1.	What is a popular way to iterate through collections such as Arrays and Hashes?
2.	What is used to blueprint Objects in Ruby?
3. Name a use case for using *args with a method!
4. Classes are objects and therefore have ___________ and ______________.
5. To modify these, we create _____________ and _____________ methods (hint: mutator).



## We need a few Gems...

* We'll need Sinatra
* Let's install it! `gem install sinatra`
* Finally, we want Bundler - `gem install bundler`
* This gem allows us to bundle all the things together to make an app


## Introducing Sinatra

* http://www.sinatrarb.com/
* Lightweight, designed to get to the point
* Highly modular and built to scale
* The easiest way to write a server in Ruby



## Your First Webserver

**Let's get started by building a web server in Ruby**



## 1. Gemfile

First, we need somewhere to store all of the Gems that our application needs...

* Gemfiles are where we store information about our application.
* They allow us to specify what gems we want our application to use.
* ...and where to get them from.

*Gemfile*

```ruby
source 'https://rubygems.org'

gem 'sinatra'
gem 'json'
```



## Oh wait... did you hear that?

*The Gemfile had new Gems added to it!*

* `bundle`
* Yes, `bundle`
* From terminal in the folder where your app lives...
* Run the `bundle` command
* Bundler will then grab all the gems and bundle them together for your app



## 2. Config.ru

* We now need a file to tell our application how it should be configured.
* This tells us what we need to do and what settings our app should use.
* Since we're using Sinatra, this will be pretty simple

```ruby
require './app'
run Sinatra::Application
```


## 2. Config.ru

What was going on in that file?

* We required the `app.rb` file by using Ruby's **Require** statement
* This forces a file to be loaded once into our application, making all of its methods available
* We then `run Sinatra::Application` - or tell Sinatra to start.
* That's it!


## 3. App.rb

*Our final app.rb will look like this.. but we're going to build it!*

```ruby
require 'bundler'
Bundler.require()

get '/' do
  {:name => 'test'}.to_json
end
```


## 3. App.rb

* In our `app.rb` file, we now need to to require Bundler.
* It is what bundles our gems.
* We need Gems in our app - you'll se why when we want to send JSON results.

*app.rb*

```ruby
require 'bundler'
Bundler.require()
```


###3. App.rb

* Now, we need to let users access resources on our server.
* But how will we tell them where to go?
* We provide **Routers**. These are similar to *Controllers*.
* These route the user to http://somedomain.com/route/
* We'll define a root route first to access http://localhost/
* If this were on a live server, it could be http://somedomain.com/

*app.rb*

```ruby
require 'bundler'
Bundler.require()

get '/' do
  # some code goes here
end
```


## App.rb

* Now that we can have a user access a resource via a route...
* Let's expose a resource to them!
* We'll use the JSON gem here to return a Hash back to a user as JSON

*app.rb*

```ruby
require 'bundler'
Bundler.require()

get '/' do
  {:message => 'hello, world!'}.to_json
end
```


### Save EVERYTHING

* Add
* Commit
* Pull
* Push



### Let's run our server

* In terminal, let's run our app.
* Did you add any new gems? If so, `bundle`!
* If not, you heard nothing `shifty_eyes`
* Now, let's start our server

```bash
bundle exec rackup
```

* This tells the **Rackup** middleware to run our server


## Viewing our resource

* Sinatra listens for requests on port **9292**
* Let's browse to our resource!
* http://localhost:9292/
* ...what do you see!




## Conclusion

* You just build a webserver!
* Is this awesome?
* Yes?
* HECK YEAH
