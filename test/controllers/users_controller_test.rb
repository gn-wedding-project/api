require "test_helper"

class UsersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user = users(:one)
  end

  test "should get index" do
    get users_url, as: :json
    assert_response :success
  end

  test "should create user" do
    assert_difference("User.count") do
      post users_url, params: { user: { first_name: @user.first_name, is_confirmed: @user.is_confirmed, is_invited: @user.is_invited, is_special: @user.is_special, last_name: @user.last_name, password: @user.password, rg: @user.rg, tel: @user.tel } }, as: :json
    end

    assert_response :created
  end

  test "should show user" do
    get user_url(@user), as: :json
    assert_response :success
  end

  test "should update user" do
    patch user_url(@user), params: { user: { first_name: @user.first_name, is_confirmed: @user.is_confirmed, is_invited: @user.is_invited, is_special: @user.is_special, last_name: @user.last_name, password: @user.password, rg: @user.rg, tel: @user.tel } }, as: :json
    assert_response :success
  end

  test "should destroy user" do
    assert_difference("User.count", -1) do
      delete user_url(@user), as: :json
    end

    assert_response :no_content
  end
end
