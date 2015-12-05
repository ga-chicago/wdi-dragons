## 5.7 Application Controller Architecture

```Ruby
class ApplicationController < ActiveRecord::Base

  #ApplicationController is a configuration controller
  # not_found - 404 so all child controllers have it
  # sessions! all contollers need access to sessions
  # public! Setting your public folder so all controllers have access
  # views! direct our views somewhere
  # auth checks! all the controllers should have access!
  # database connections!
  # cookies!
  # anything else all controllers should have access to
  # goes in ApplicationController

  # do not override def initialize in any controller

end
```

#### Basic Application Controller & Inheritance Example

```ruby
class ApplicationController < Sinatra::Base

  enable :sessions
  ActiveRecord::Base.establish_connection(
    :database => 'martys_life',
    :adapter => 'mongodb'
  )
  def self_check
    return 'you better check yoself before you wreck yoself'
  end
  not_found do

  end
  get '/' do
    return {:message => 'marty party'}.to_json
  end

end

class AccountController < ApplicationController

  # this.self_check()
  self.self_check

  get '/' do

  end

end

class FlightController < ApplicationController

end
```
