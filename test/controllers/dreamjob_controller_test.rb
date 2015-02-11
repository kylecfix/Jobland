require 'test_helper'

class DreamjobControllerTest < ActionController::TestCase
  test "should get randojob" do
    get :randojob
    assert_response :success
  end

  test "should get jobpath" do
    get :jobpath
    assert_response :success
  end

end
