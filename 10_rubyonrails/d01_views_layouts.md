#Rails Views and Layouts

###Sinatra Vs Rails

With Sinatra, we've seen that if there is a file called `layout.erb`, this file will be used as the app layout by default.

If this file `layout.erb` contains a yield statement `<%= yield %>`, then the template rendered for the current route will be "injected" where the yield statement is in the layout.  Combined, the templates and layouts will be sent back to the client.

This logic is pretty much the same with Ruby on Rails. When the app is created, Rails will automatically add a layout `application.html.erb` in `app/views/layouts/application.html.erb`. This layout already contain a yield statement and all the links to css and js files in the head part of the html document.

##Rails Views

In Rails, the logic for the rendering a view is quite straightforward. Given that every route in Rails will execute a method inside a controller, when the method is executed, Rails will look for:
1. A folder inside view corresponding to the controller's name (folder `post` for `PostController`).
2. A file inside that folder corresponding to an action in that controller (file `index.html.erb`).

For example , if we call `http://localhost:3000/posts`, Rails will execute the method `index` in the controller `posts` and then, look for a view located in `app/views/posts/index.html.erb`  This works when the method always renders the same view.

In some cases though, you may want to render a view with a different name than the current method. 
For example: if a post was saved successfully go to the index page, otherwise go back to the form.
To show a different view than the default view, you would render a different view in a controller's action.

There are different syntaxes for render, and they all do the same thing.

```ruby
    render :switch
    render action: :switch
    render "switch"
    render "switch.html.erb"
    render action: "switch"
    render action: "switch.html.erb"
    render "home/switch"
    render "home/switch.html.erb"
    render template: "home/switch"
    render template: "home/switch.html.erb"
    render "/path/to/rails/app/views/home/switch"
    render "/path/to/rails/app/views/home/switch.html.erb"
    render file: "/path/to/rails/app/views/home/switch"
    render file: "/path/to/rails/app/views/home/switch.html.erb"
```

##Rails Layouts

By default, Rails will render the layout `application.html.erb` - just like `layout.html.erb` in Sinatra - but sometimes, you want to render a template in a different layout.

You can render a differnt layout by doing the following:

```ruby
render layout: "name_of_layout"
```

This line will just tell Rails to use the same logic of template rendering, but instead of using the default `application.html.erb`, it will render the template inside `name_of_layout.html.erb`.

You can also do `render layout: false` if you wanted to use ajax to pull in a view.
