require 'test_helper'

class HierarchyControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

end
