## 4.2 Homework - Class Reps

Tonight we're going to have you repeatedly build classes over and over. The primary goal is for you to become familiar with building classes. We're going to take what you have learned to build a few amazing utilities that you can use once we build servers tomorrow!

#### 1. Movie Class

* Build a class called `Movie`.
* You are **not** allowed to use `attr_accessor` with this class.
* This means that you need to build manual getters/setters!
* This class has the following **attributes** as `@instance_variables`:
  * `@movie_title`
  * `@movie_description`
  * `@ombb_url`
* This class has the following **abilities**:
  * *set_ombd_url* with a single argument of *url* that will set `@omdb_url`
  * *get_omdb_url* that returns `@ombd_url`
  * *fetch_movie* that uses `HTTParty.get` with the `@url` to receive data. Next, it will update `@movie_title` and `@movie_description` with
  * *to_s* that returns the `@movie_title` & `@movie_description` as a string.
* Test these methods to verify they work in your code.
* Note: Don't forget to `require 'HTTParty'` in your code!
* Save this in a file called `movie_class.rb`


#### 2. Dictionary Class

* Build a class called `Dictionary`
* You are **not** allowed to use `attr_acessor` with this class.
* This means that you need to build manual getters/setters!
* This class has the following **attributes** as `@instance_variables`:
  * `@internal_hash`
* This class has the following **abilities**:
  * `get_dictionary` that returns `@internal_hash`
  * `add` that accepts two arguments: `:key` and `value`. You will then add these to your `@internal_hash`
  * `to_s` that returns the `@internal_hash` as a string (consider using `.each` here)
  * `to_json` that returns the `@internal_hash` as a JSON object.
* Note: Don't forget to `require 'json'` in your code!
* Test these methods to verify they work in your code.
  * Add a `404` key with a value of `womp womp - the page doesn't exist`
  * Add a `403` key with a value of `DENIED ACCESS`
  * Add a `500` key with a value of `SERVER ERROR OH NOES`
  * Output the Dictionary as JSON using the method you built.
* Save this in a file called `dictionary_class.rb`

#### 3. RUPS Class

* Build a class called `Rups`
* You are allowed to use `attr_accessor` in this class!
* Turn all of your homeworks' methods last night into individual methods that your `Rups` class owns.
* Add instance variables as needed here (you may or may not need them depending on how you build your class)
* Test and verify all of your methods work.
* Save this in a file called `rups_class.rb`

To get you started...

```ruby
class Rups

  def lengths(argument)
    # some code...
  end

end
```
