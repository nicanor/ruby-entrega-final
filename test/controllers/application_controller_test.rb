require 'test_helper'
 
class ApplicationControllerTest < ActionController::TestCase

  test "should route to home" do
    assert_routing '/', {controller: "application", action: "home"}
  end

end