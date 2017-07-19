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
    assert_select "title", "File size | #{@base_title}"
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
end
