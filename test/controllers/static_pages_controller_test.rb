require 'test_helper'

class StaticPagesControllerTest < ActionController::TestCase
  # test "the truth" do
  #   assert true
  # end

  test 'should get home page' do
    get :home
    assert_response :success
  end

  test 'should get home page' do
    get :help
    assert_response :success
  end

  test 'should get home page' do
    get :about
    assert_response :success
  end

end
