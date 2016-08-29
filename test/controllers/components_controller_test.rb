require 'test_helper'

class ComponentsControllerTest < ActionController::TestCase
  test "should get add_component" do
    get :add_component
    assert_response :success
  end

end
