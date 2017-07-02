require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  
  test "should get root" do
    get root_url
    assert_response :success
  end
  
  test "should get home" do
    get static_pages_home_url
    assert_response :success
    assert_select "title", "Home | About 4K TV"
  end

  test "should get about" do
    get static_pages_about_url
    assert_response :success
    assert_select "title", "About | About 4K TV"
  end

end
