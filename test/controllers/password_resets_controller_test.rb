require 'test_helper'

class PasswordResetsControllerTest < ActionDispatch::IntegrationTest
  
  def setup
    @user = users(:michael)
  end
  
  test "should get new" do
    skip()
    get password_resets_new_url
    assert_response :success
  end

  test "should get edit" do
    skip()
    get password_resets_edit_url
    assert_response :success
  end

end
