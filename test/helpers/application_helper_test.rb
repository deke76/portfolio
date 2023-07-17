require "test_helper"

class ApplicationHelperTest < ActionView::TestCase
  test "should return true" do
    assert_equal embedded_svg('at-solid.svg'), 'at-solid.svg'
  end
end