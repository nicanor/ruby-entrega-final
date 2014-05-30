require 'test_helper'
 
class ResourcesControllerTest < ActionController::TestCase

  test "should index resources" do
    assert_routing '/resources', {controller: "resources", action: "index"}
    get :index
    assert_response :success
    data = JSON.parse @response.body
    data.map! {|r| Resource.new(r)}
    assert_equal Resource.all, data
  end

end