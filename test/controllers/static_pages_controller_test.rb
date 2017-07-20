require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  
  def setup
    @base_title = "About 4K TV"
  end
  
  test "should get home" do
    get root_path
    assert_response :success
    assert_select "title", "#{@base_title}"
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
  
  test "should get bit rate" do
    get bit_rate_path
    assert_response :success
    assert_select "title", "Bit rate | #{@base_title}"
  end
  
  test "should get file size" do
    get file_size_path
    assert_response :success
    assert_select "title", "4K File size | #{@base_title}"
  end
  
  test "should get what is 4k" do
    get what_is_4k_path
    assert_response :success
    assert_select "title", "What is 4K | #{@base_title}"
  end
  
  test "should get hdr" do
    get hdr_path
    assert_response :success
    assert_select "title", "HDR | #{@base_title}"
  end
  
  test "should get interlaced vs progressive" do
    get i_vs_p_path
    assert_response :success
    assert_select "title", "Interlaced vs Progressive | #{@base_title}"
  end
  
  test "should get pixel chart" do
    get pixel_chart_path
    assert_response :success
    assert_select "title", "Pixel chart | #{@base_title}"
  end
  
  test "should get shortcuts" do
    get shortcuts_path
    assert_response :success
    assert_select "title", "Shortcuts | #{@base_title}"
  end
  
  test "should get ultra hd" do
    get ultra_hd_path
    assert_response :success
    assert_select "title", "Ultra HD | #{@base_title}"
  end
  
  test "should get how 4k" do
    get how_4k_path
    assert_response :success
    assert_select "title", "How to get a 4K picture? | #{@base_title}"
  end
  
  test "should get where 4k" do
    get where_4k_path
    assert_response :success
    assert_select "title", "Where to get 4K | #{@base_title}"
  end
  
end
