## Ruby (Sinatra) and Backbone.js

### Sinatra and POST Requests
- Discuss how we are reading raw data from the request.body
- request.body with backbone; params otherwise

```ruby
# create
post '/api/cards' do
	request_body = JSON.parse(request.body.read.to_s)
	# must read the request_body keys as strings; symbols return null
	card_args = { title: request_body["title"], message: request_body["message"] }
	card = Card.create(card_args)
	card.to_json
end
```
