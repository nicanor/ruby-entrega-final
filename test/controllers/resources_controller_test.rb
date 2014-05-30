require 'test_helper'
 
class ResourcesControllerTest < ActionController::TestCase

  test "should index resources" do
    assert_routing '/resources', {controller: "resources", action: "index"}
  end

end