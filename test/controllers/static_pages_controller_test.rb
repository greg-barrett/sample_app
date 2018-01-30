require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  def setup#automatically run before each test-using magic
    @base_title= "Ruby on Rails Tutorial Sample App" # sets this variabel so i dont have to type it in the titles of each test.
  end

  test "should get home" do
    get root_path #tells test to get the url for the home page
    assert_response :success # tells it too expect a 200 ok in response
    assert_select "title", "Ruby on Rails Tutorial Sample App"
  end

  test "should get help" do
    get help_path
    assert_response :success
    assert_select "title", "Help | #{@base_title}"
  end

  test "should get about" do
    get about_path
    assert_response :success
    assert_select "title", "About | #{@base_title}"
  end

  test "should get contact" do
    get contact_path
    assert_response :success
    assert_select "title", "Contact | #{@base_title}"
  end

end
