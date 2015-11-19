## 4.3 Homework: MOAR SERVERS!@!@!@1212

**MOAR SERVERS**

1. It is time to build the cutest server ever - the `small_animals` server! Place this in a new folder in `05_ruby101/your_name/` called `small_animals`
2. Create a brand new, small Sinatra app. Check out the *Simplest Sinatra app, ever* above for guidance.
3. Write a **simple** Sinatra app with a `Gemfile`, `config.ru`, and `app.rb`
4. Inside of your `app.rb`, you need to create a few routes...
  * '/' - This should return a Hash turned into JSON with the following keys: `:name` and `:message`  
  * *Five* different routes mapped to the names of small animals - ie `/kitten` and `/puppy`
  * These five different routes should return a hash turned JSON with the following keys: `:name`, `:cuteness`, `:habitat`, `:picture_url`, and `:description`
5. Test and verify these routes render JSON in the browser.
6. **BONUS**: Add *ERB* views and then create a new `/views/json_test.erb`. Map it to a `router` and call each API call using `$.getJSON` or `$.ajax` to render the content using `console.log` or whatever else you choose.
7. **BONUS**: You can use each animal route's `:picture_url` to render images as a double bonus!
