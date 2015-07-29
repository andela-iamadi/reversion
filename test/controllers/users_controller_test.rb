require 'test_helper'

class UsersControllerTest < ActionController::TestCase

  def setup
    @user = User.new(name: "Example User", email: "user@example.com",
                     password: "foobar", password_confirmation: "foobar")
  end
  test "should get new" do
    get :new
    assert_response :success
    assert_select 'title', "Sign up | Ruby on Rails Tutorial Sample App"
  end


  test "should get a user" do
    require 'pry'; binding.pry
    @user = User.find(1)
    get :show
    assert_response :success
    # assert_select @user.count, 1
  end
end
