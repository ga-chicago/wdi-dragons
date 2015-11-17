## 4.2 Inheritance via Classes

```ruby
#inheritance through space ships!

class SaturnV
	def initialize
		@name = 'Saturn V'
		@fuel = 'liquid hydrogen'
		@mission = 'go to the moon'
	end

	def take_off
		return "We're taking off! YAY!"
	end

	def to_s
		return @name + " has a mission to " + @mission
	end
end

class SLS < SaturnV
	def initialize
		@name = 'SLS'
		@fuel = 'liquid hydrogen'
		@mission = ' to make it to Mars and Europa'
	end
end

class Enterprise < SLS
	def initialize
		@name = 'Starship enterprise'
		@mission = 'to boldly go where no man has gone before'
		@fuel = 'antimatter'
	end
end
```
