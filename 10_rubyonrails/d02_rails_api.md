##API with Rails

You guys have learned how to make api's in different frameworks. This is a guide to making one in rails.
The rails api gem is a common gem to make a rails api. 
Many companies use rails for their backend and use a frontend framework for their views.
For example, springleaf financial uses rails api with ember. You can use rails api with react or angular if you wanted to.

```
gem install rails-api
rails-api new app_name -d postgresql
```

```
def index
    @song = Song.all
    render json: @song, status: :ok
end

def show
    render json: @song
end

def create
    @song = Song.new

    if @song.save
        render json: @song, status: :created
    else
        render json: @song.errors, status: :unprocessable_entity
    end
end

def update
    if @song.update(song_params)
        head :no_content
    else
        render json: @song.errors, status: :unprocessable_entity
    end
end

def destroy
    @song.destroy

    head :no_content
end

```

###Common Status Codes
####2XX Sucess Codes
| Status Code | Status | Ruby Symbol |
|-----------|------|------------|
| 200 | OK | :ok |
| 201 | Created | :created |
| 204 | No content | :no_content |

####4xx Client Error
| Status Code | Status | Ruby Symbol |
|-----------|------|------------|
| 422 | Unprocessable Entity | :unprocessable_entity |

###Independent Practice
* Add show, edit, and delete functionality in api
* Add at least one private method
* Add at least one validation
