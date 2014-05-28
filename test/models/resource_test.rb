require 'test_helper'

class ResourceTest < ActiveSupport::TestCase
  test "should create resource" do
    x = Resource.count
    r = Resource.create(name: 'Name', description: 'Description')
    assert_equal (x+1), Resource.count
    
    assert_equal 'Name', r.name
    assert_equal 'Description', r.description
  end
end
