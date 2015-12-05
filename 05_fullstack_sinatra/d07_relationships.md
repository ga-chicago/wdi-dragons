## Relationships using ActiveRecord

#### Let's have some colourful fun!
* `gem install rainbow`
* `require 'rainbow'`

#### Building the SQL

**1:Many**

```sql
CREATE TABLE cows (id SERIAL PRIMARY KEY, farmer_id INTEGER, name VARCHAR(255));
CREATE TABLE farmers (id SERIAL PRIMARY KEY, name VARCHAR(255));
```

**Many:Many**

```sql
CREATE TABLE travelers (id SERIAL PRIMARY KEY, name VARCHAR(255));
CREATE TABLE vacation_spots (id SERIAL PRIMARY KEY, city VARCHAR(255));
CREATE TABLE visits (id SERIAL PRIMARY KEY, vacation_spot_id INTEGER, traveler_id INTEGER, fun_level INTEGER, timestamp TIMESTAMP);
```

#### Many to Many Models

We're going to create two models. They will have a many to many relationship.

*Models*
```ruby
# MANY
class VacationSpot < ActiveRecord::Base
  has_many :visits
  has_many :travelers, :through => :visits
  def to_s
    self.city + '... The greatest City in the World!'
  end
end

# MANY
class Traveler < ActiveRecord::Base
  has_many :visits
  has_many :vacation_spots, :through => :visits
  def to_s
    self.name + '... seeing the world!'
  end
end

# JOIN
class Visit < ActiveRecord::Base
  belongs_to :traveler
  belongs_to :vacation_spot
  def to_s
    self.traveler.to_s + " - visits - " + self.vacation_spot.to_s
  end
end
```


#### Let's See Our Output

```ruby
#  ---- Examples ----
puts Rainbow("\n***********************************************************************************************").blue
puts Rainbow("*********** What happens in the city stays in the city... cause we have persistance ***********").red
puts Rainbow("***********************************************************************************************").blue


puts Rainbow("\nCreate A Travler:").green
puts Rainbow("lichard = Traveler.create({name: 'Lichard DeGray'})").magenta
lichard = Traveler.create({name: 'Lichard DeGray'})

puts Rainbow("\nCreate A Vacation Spot:").green
puts Rainbow("alp_lake = VacationSpot.create({city: 'Aplville'})").magenta
alp_lake = VacationSpot.create({city: 'Aplville'})

puts Rainbow("\nCreate a visit joining a travler and a vacation spot").green
puts Rainbow("weekend_get_away = Visit.create({traveler: lichard, vacation_spot: alp_lake})").magenta
weekend_get_away = Visit.create({traveler: lichard, vacation_spot: alp_lake})

puts Rainbow("\nTravler:").green
puts Rainbow("puts lichard").magenta
puts lichard

puts Rainbow("\nVaction Spot:").green
puts Rainbow("puts alp_lake").magenta
puts alp_lake

puts Rainbow("\nVisit:").green
puts Rainbow("puts weekend_get_away").magenta
puts weekend_get_away

puts Rainbow("\nTravler's Visits:").green
puts Rainbow("puts lichard.visits").magenta
puts lichard.visits

puts Rainbow("\nTravler's Vacation Spots:").green
puts Rainbow("puts lichard.vacation_spots").magenta
puts lichard.vacation_spots

puts Rainbow("\nVacation Spot's Vists:").green
puts Rainbow("puts alp_lake.visits").magenta
puts alp_lake.visits

puts Rainbow("\nVacation Spot's Travelers:").green
puts Rainbow("puts alp_lake.travelers").magenta
puts alp_lake.travelers

puts Rainbow("\nVisit's Traveler:").green
puts Rainbow("puts weekend_get_away.traveler").magenta
puts weekend_get_away.traveler

puts Rainbow("\nVisit's Vacation Spot:").green
puts Rainbow("puts weekend_get_away.vacation_spot").magenta
puts weekend_get_away.vacation_spot

puts ''
puts Rainbow("*******************************************************").blue
puts Rainbow("*********** Be sure to visit us again soon ***********").red
puts Rainbow("******************************************************").blue
puts ''
```

#### 1:Many Models

```ruby
# ** ONE-to-MANY **

# ONE
class Farmer < ActiveRecord::Base
  has_many :cows
  def to_s
    '...and ' + self.name + ' was his/her name... oh'
  end
end

# MANY
class Cow < ActiveRecord::Base
  belongs_to :farmer
  def to_s
    self.name + '... moooooooo'
  end
end
```

#### Let's View Our Code, Again

```ruby
puts Rainbow("\nCreate A Cow:").green
puts Rainbow("mooooonalisa = Cow.create({name: 'lisa'})").magenta
mooooonalisa = Cow.create({name: 'lisa'})

puts Rainbow("\nCreate A Farmer:").green
puts Rainbow("lichard = Farmer.create({name: 'Lichard DeGray'})").magenta
lichard = Farmer.create({name: 'Lichard DeGray'})

puts Rainbow("\nAssociate the farmer and the cow:").green
puts Rainbow("lichard.cows << mooooonalisa").magenta
lichard.cows << mooooonalisa

puts Rainbow("\nFarmer").green
puts Rainbow("puts lichard").magenta
puts lichard

puts Rainbow("\nFarmer's cows").green
puts Rainbow("puts lichard.cows").magenta
puts lichard.cows
```

#### Further Reading

- [ActiveRecord Association Basics](http://guides.rubyonrails.org/association_basics.html)
