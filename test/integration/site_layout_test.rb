require 'test_helper'

class SiteLayoutTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end
  test "layout links" do
    
      get root_path
      assert_select "a[href=?]", root_path, count: 3
      assert_select "a[href=?]", about_path
      assert_select "a[href=?]", contact_path
      assert_select "a[href=?]", bit_rate_path
      assert_select "a[href=?]", file_size_path
      get contact_path
      assert_select "title", full_title("Contact")
  end
  
  
end