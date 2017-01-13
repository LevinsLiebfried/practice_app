require 'test_helper'

class UserControllerTest < ActionDispatch::IntegrationTest
  def setup
    @baste_title= " | MindMe collaboration"
  end

  test "should get new" do
    get signup_path
    assert_response :success
    assert_select "title", "Sign up#{@baste_title}"
  end



end
