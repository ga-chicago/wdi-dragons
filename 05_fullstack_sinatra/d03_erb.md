## 5.3 ERB (Embedded Ruby) In Depth

Imagine that we have a route that supplies us some information. In our route, we can declare a few variables for use in an **ERB** page. We then call the **ERB** method to load a *view*. For example:

```ruby
get '/darth_vader' do

	# let's have some variables
	name = 'Darth Vader'
	force_power = 'Force Choke'
	lightsaber_colour = 'red'

	# load a view using ERB
	erb :darth_vader

end
```

When this route is called, `/views/darth_vader.erb` will be rendered. The ERB file looks like the following:

```erb

<h1><%= name %></h1>

<p><%= name %> uses his <%= force_power %> to get his job done. He rocks a <%= lightsaber_colour %> lightsaber.</p>

```

This would render out to...

```html

<h1>Darth Vader</h1>

<p>Darth Vader uses his force choke to get his job done. He rocks a red lightsaber.</p>
```

#### Rendering Content vs Executing Ruby Code

To **Render** content, we use the `<%= %>` tag. Inside of it, we can place variable names that are declared in our route (or class).

To **Execute** ruby code, we use the `<% %>` tag. Notice the lack of the `=` sign.

#### Loops in ERB

Now, imagine we have just fetched a list of `Subordinants` using ActiveRecord in a route. Each one has two attributes: `name` and `rank`.

```ruby
get '/subordinates' do

	# load all the subordinates from the Subordinates table
	subordinates = Subordinates.all

	erb :subordinates

end
```
To render them, we'd want to conceptually just loop through them and put them somewhere. In command line ruby this would look like:

```ruby
subordinates.each do |minion|
	puts minion.name + ' has a rank of ' + minion.rank
end
```

Our **ERB** view will look like that, but uses the *executing* ERB tag to run Ruby code. It also uses the *Render* tag as well... but only when we want to render content.

```erb
<h1>Subordinates</h1>

<% subordinates.each do |minion| %>

	<li>
	<%= minion.name %> has a rank of <%= minion.rank %>
	</li>

<% end %>
```
