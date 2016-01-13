##Forms in Rails

This form will work for both new and edit
`_form.html.erb`
```html
<%= form_for(@book) do |f| %>
    <%= f.label :title %>
    <%= f.text_field :title %><br>
    <%= f.hidden_field :checked_out, value: @checked_out %>

    <%= f.submit %>
<% end %>
```

###Form Helpers
* text_field
* password_field
* text_area
* hidden_field
* radio_button
* check_box
* file_field
* label


