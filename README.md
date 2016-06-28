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
  def models
  # the array is an array of activerecord classes you want to have managed for you
    render json: Adminish::Admin.new([Post, Category])
  end
```

### Gotchas
the gem assumes you are using the conventional CRUD uri strategies
```
POST /model/ # creates a model
GET /model/ # gets all of the models
PUT /model/:id # updates a model with id of :id
DELETE /model/:id # deletes a model with id of :id
```
