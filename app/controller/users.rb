# frozen_string_literal: true

require './app/model/users'
# Class responsible for operations on the user table
class UserController
  def index
    users = Users.all
    users.to_json
  end

  def show(id)
    user = Users.find_by(id)
    user ? user.to_json : { error: 'User  not found' }.to_json
  end

  def create(params)
    user = Users.create(params)
    user.to_json
  end

  def update(id, params)
    user = Users.find_by(id)
    return { error: 'User not found' }.to_json unless user

    user.update(params)
    user.to_json
  end

  def destroy(id)
    user = Users.find_by(id)
    return { error: 'User not found' }.to_json unless user

    user.destroy
    { message: 'User deleted sucessfully' }.to_json
  end
end
