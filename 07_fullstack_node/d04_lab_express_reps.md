
## Lab: Express REPS

1. Create an Express application that serves a static JSON file. We used the `fs` library to do this yesterday. Feel free to refer to your code from yesterday for assistance.

2. Create an Express RESTful API with the resource (URL) of `/api`. Inside of the `.get(), post(),`, etc commands leave Javascript comments that describe that this is `not yet implemented`. We will use this API with MongoDB to create CRUD operations soon. Research Express routes on your own to implement this.

3. Use the Express Generate command to create basic website; use EJS views to render a page (similar with ERB in Sinatra/Rails). You are to create a website that makes an `$.ajax/$.getJSON` request to an API on the server it is on (similar to Sinatra). This API should return JSON with the `message` of *it is a beautiful day* and a `note` of *Chicago summers rock*. It should then render this data somewhere on the page using jQuery.
