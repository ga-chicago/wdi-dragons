## Ajax on an Express View

```javascript
<!DOCTYPE html>
<html>
  <head>
    <title></title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
    <link rel='stylesheet' href='/stylesheets/style.css' />
  </head>
  <script type="text/javascript">
    $(document).ready(function() {
      $.ajax({
        type: 'get',
        url: '/api',
        success: function(data) {
          console.log(data)
          for (var item in data) {
            $('body').append(item + ": " + data[item]);
          }
        },
        error: function(err) {
          console.log(err);
        }
      });
    });
  </script>
  <body>
  </body>
</html>
```
