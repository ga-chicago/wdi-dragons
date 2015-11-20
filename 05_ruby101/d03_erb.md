## 4.3 ERB

ERB stands for **embedded Ruby**.

You may call Ruby methods and variables using the `<%= ruby_here %>` syntax. To create an ERB view, create a file in the `/views/` directory. It must be called `filename.erb`. This is standard HTML with Ruby built in.

#### Rendering a view

To render a view (instead of JSON), call:

```ruby
get '/' do
  erb :filename # this would point to /views/filename.erb
end
```

Notice the use of a **symbol** to call the filename.

#### Yield + Master Layout

You can include a master layout file that will apply to **every** page you access. This must be named `layout.erb`. Inside, you will need to create a *yield* statement. This statement yields to the view you request and places that specific HTML/Ruby where yield is located.

![the_erb_views.jpg](the_erb_views.jpg)

##### Example

```html
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <title>Box Model Intro</title>
    <link rel='stylesheet' href='style.css'>
  </head>
  <body>

    <%= yield %>

  </body>
</html>
```
