## 5.7 rake

###Why Use Rake
Rake allows you to customize tasks to run repetitive terminal tasks

###Rake in Rails vs Sinatra
* Rails has built in rake tasks to make generating databases, migration files, migrating files, generating models, and lots of other things easier for the developer to do

* People have written gems and templates to replicate rake with rails. The template I provided has rake set up for sinatra

###How to Write a Rake task
In your Rakefile, require 'rake' at the top of the page

Example
```ruby
require 'rake'

desc "This is a description of your task"
task :name_of_task do
  # code to run goes here
  # Example of a command: the code below will remove a file called garbage.rb
  `rm garbage.rb`
end
```
##Sinatra Template With Rake Tasks
Template: https://github.com/ga-chicago/sinatra_rake

####Available tasks:
rake console
rake db:create
rake db:drop
rake db:migrate
rake db:reset
rake db:seed
rake db:version
rake generate:migration
rake generate:model

To view all rake tasks: rake -T
