require 'test_helper'

class StaticPagesControllerTest < ActionController::TestCase
  # test "the truth" do
  #   assert true
  # end

  test 'should get home page' do
    get :home
    assert_response :success
    assert_select "title", "Ruby on Rails Tutorial Sample App"
  end

  test 'should get help page' do
    get :help
    assert_response :success
    assert_select "title", "Help | Ruby on Rails Tutorial Sample App"
  end

  test 'should get about page' do
    get :about
    assert_response :success
    assert_select "title", "About | Ruby on Rails Tutorial Sample App"
  end

  test 'should get faq page' do
    get :faq
    # require 'pry'; binding.pry
    assert_response :success
    assert_select "title", "FAQ | Ruby on Rails Tutorial Sample App"
  end
end
