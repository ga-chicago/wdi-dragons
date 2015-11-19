## 4.3 Bonus Homework

**Servers! Servers, everywhere!**

1. Create a new directory in `05_ruby101/your_name/` called `sinatra_reps`
2. Create a brand new, small Sinatra app.
3. Write a **simple** Sinatra app with a `Gemfile`, `config.ru`, and `app.rb`
4. Inside of your `app.rb`, you need to create a few routes...
  * '/' - This should return a Hash turned into JSON with the following keys: `:name` and `:message`  
  * '/about' - this should return a Hash turned into JSON with the following keys: `:about`, `:age`, `:favourites`
  * '/contact' - this should return a Hash turned into a JSON with the following keys: `:name`, `:email`, and `:thanks`
5. Test and verify these routes render JSON in the browser.
6. **BONUS** Add *ERB* views and then create a new `/views/json_test.erb`. Map it to a `router` and call each API call using `$.getJSON` or `$.ajax` to render the content using `console.log` or whatever else you choose.
