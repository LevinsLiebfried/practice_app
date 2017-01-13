require 'test_helper'

class StartPagesControllerTest < ActionDispatch::IntegrationTest

  def setup
    @baste_title = " | MindMe collaboration"
  end

  test "should get home" do
    get home_path
    assert_response :success
    assert_select "title", "Home#{@baste_title}"

  end

  test "should get help" do
    get help_path
    assert_response :success
    assert_select "title", "Help#{@baste_title}"

  end

  test "should get about" do
    get about_path
    assert_response :success
    assert_select "title", "About#{@baste_title}"

  end

  test "should get root" do
    get root_path
    assert_response :success
    assert_select "title", "Home#{@baste_title}"
  end

end
