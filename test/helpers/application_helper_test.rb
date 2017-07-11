require 'test_helper'

class ApplicationHelperTest < ActionView::TestCase
  test "full title helper" do
    assert_equal full_title,         'About 4K TV'
    assert_equal full_title("Help"), 'Help | About 4K TV'
  end
end