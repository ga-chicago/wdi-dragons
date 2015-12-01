
## 5.3 Why use rake?
* When you make migrations using rake, it makes timestamped migration file for you.
* When you use migrations, you can now have templates for your objects that will be made with postgresql, this lets other users use whatever database you set up instead of it living in your machine only

#### Rake
* The rake gem needs a Rakefile to work in order for the gem to know where to put the db and migrate folder
* So in the project folder we need to add Rakefile.rb

````ruby
require "sinatra/activerecord/rake"

namespace :db do
  task :load_config do
    require "./app"
  end
end

````

#### Rake commands
* to see all rake commands:
  * `bundle exec rake -T`
* to create migration
  * `bundle exec rake db:create_migration NAME=create_users`
* to migrate database (actually creates tables in database)
  * `bundle exec rake db:migrate`
