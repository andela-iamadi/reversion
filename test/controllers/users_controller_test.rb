require 'test_helper'

class UsersControllerTest < ActionController::TestCase

  test "should get new" do
    get :new
    assert_response :success
    assert_select 'title', "Sign up | Ruby on Rails Tutorial Sample App"
  end

  test "should get a user" do

    get :edit
    assert_select @user.count, 1
  end
end
