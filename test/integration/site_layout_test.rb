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
      assert_select "a[href=?]", hdr_path
      assert_select "a[href=?]", pixel_chart_path
      assert_select "a[href=?]", how_4k_path
      assert_select "a[href=?]", i_vs_p_path
      assert_select "a[href=?]", ultra_hd_path
      assert_select "a[href=?]", pixel_chart_path
      assert_select "a[href=?]", what_is_4k_path
      assert_select "a[href=?]", where_4k_path
      assert_select "a[href=?]", shortcuts_path
      get contact_path
      assert_select "title", full_title("Contact")
  end
  
  
end
