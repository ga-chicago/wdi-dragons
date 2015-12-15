## Lab: Express Reps 

* We're going to use `express --css less --ejs` to build a website.
* This will auto-generate an Express application for us.
* When we use the generate tool, we can start the app using `npm start`

#### Sinatra vs Express

* In `death_star`, create a new folder called `sinatra_vs_express`
* Change into `sinatra_vs_express`
* Run the following command: `express --css less --ejs`
* Open the folder in atom: `atom .`

#### Comparing Differences

* With the person next to you...
* Take a look around for the next 20 minutes in your new app.
* Compare it directly to Sinatra.
* Create a list of 4 similarities between Sinatra/Express
* Be prepared to briefly share these with the class.


## Express REPS

1. Create an Express application that serves a static JSON file. We used the `fs` library to do this yesterday. Feel free to refer to your code from yesterday for assistance.

2. Create an Express RESTful API with the resource (URL) of `/api`. Inside of the `.get(), post(),`, etc commands leave Javascript comments that describe that this is `not yet implemented`. We will use this API with MongoDB to create CRUD operations soon. Research Express routes on your own to implement this.

3. Use the Express Generate command to create basic website; use EJS views to render a page (similar with ERB in Sinatra/Rails). You are to create a website that makes an `$.ajax/$.getJSON` request to an API on the server it is on (similar to Sinatra). This API should return JSON with the `message` of *it is a beautiful day* and a `note` of *Chicago summers rock*. It should then render this data somewhere on the page using jQuery.
