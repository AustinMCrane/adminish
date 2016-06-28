# Adminish

An easy way to describe how to interface with your ActiveRecord models so that interfaces can dynamicly interact with them

### Instructions

- add the gem to your Gemfile
```
gem 'adminish'
```
- create an admin controller that you would like to use to serve the information, i suggest the following generator
```
rails generate controller admin
```
- added a function to handle the rendering
```
# app/controllers/admin_controller.rb
  def models
  # the array is an array of activerecord classes you want to have managed for you
    render json: Adminish::Admin.new([Post, Category])
  end
```
- test out your endpoint by first
```
rails server
```
then open a browser to whatever route services your newly made endpoint
the output will look similar to this
```
{
  "models": [{
    "title": "Post",
    "tag": "posts",
    "crud": {
      "index": "/posts/",
      "show": "/posts/:id",
      "create": "/posts/",
      "update": "/posts/:id",
      "delete": "/posts/:id"
    },
    "attributes": [{
      "tag": "id",
      "title": "id",
      "type": "integer"
    }, {
      "tag": "title",
      "title": "title",
      "type": "string"
    }, {
      "tag": "body",
      "title": "body",
      "type": "text"
    }, {
      "tag": "created_at",
      "title": "created at",
      "type": "datetime"
    }, {
      "tag": "updated_at",
      "title": "updated at",
      "type": "datetime"
    }]
  }, {
    "title": "Category",
    "tag": "categories",
    "crud": {
      "index": "/categories/",
      "show": "/categories/:id",
      "create": "/categories/",
      "update": "/categories/:id",
      "delete": "/categories/:id"
    },
    "attributes": [{
      "tag": "id",
      "title": "id",
      "type": "integer"
    }, {
      "tag": "title",
      "title": "title",
      "type": "string"
    }, {
      "tag": "created_at",
      "title": "created at",
      "type": "datetime"
    }, {
      "tag": "updated_at",
      "title": "updated at",
      "type": "datetime"
    }]
  }]
}
```


### Gotchas
the gem assumes you are using the conventional CRUD uri strategies
```
POST /model/ # creates a model
GET /model/ # gets all of the models
PUT /model/:id # updates a model with id of :id
DELETE /model/:id # deletes a model with id of :id
```
