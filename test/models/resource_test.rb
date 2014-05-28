require 'test_helper'

class ResourceTest < ActiveSupport::TestCase
  test "should create resource" do
    x = Resource.count
    r = Resource.create(name: 'Name', description: 'Description')
    assert_equal (x+1), Resource.count
    
    assert_equal 'Name', r.name
    assert_equal 'Description', r.description
  end

  test "should update resource" do
    Resource.last.update(name: 'New Name')    
    assert_equal 'New Name', Resource.last.name
  end

  test "should destroy resource" do
    x = Resource.count
    r = Resource.last
    id = r.id
    r.destroy
    assert_equal (x-1), Resource.count
    assert_raises(ActiveRecord::RecordNotFound) { Resource.find(id) }
  end
end
