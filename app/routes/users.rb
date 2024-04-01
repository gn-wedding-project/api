# frozen_string_literal: true

require './app/controller/users'

# Route to get a list of all users
get '/users' do
  UserController.new.index
end

# Route to get a specific user
get '/users/:id' do |id|
  UserController.new.show(id)
end

# Route to create a user
post '/users' do
  UserController.new.create(JSON.parse(request.body.read))
end

# Route to update a user
put '/users/:id' do |id|
  UserController.new.update(id, JSON.parse(request.body.read))
end

# Route to delete a user
delete '/users/:id' do |id|
  UserController.new.destroy(id)
end
