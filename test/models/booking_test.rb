require 'test_helper'

class BookingTest < ActiveSupport::TestCase

  test "should create booking" do
    x = Booking.count
    resource = Resource.first
    booking  = resource.bookings.create(start_time: Time.now, end_time: Time.now+1)
    assert_equal (x+1), Booking.count
    assert_equal 'pending', booking.status
  end

  test "should not create booking" do
    resource = Resource.first
    assert_raises(ActiveRecord::RecordInvalid) { resource.bookings.create! }
    assert_raises(ActiveRecord::RecordInvalid) { Booking.create!(start_time: Time.now, end_time: Time.now+1) }
  end
end
