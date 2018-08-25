# == Schema Information
#
# Table name: bookings
#
#  id                 :bigint(8)        not null, primary key
#  booker_name        :string
#  booker_email       :string
#  event_start        :datetime
#  event_end          :datetime
#  title              :string
#  description        :string
#  accept             :boolean
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#  booker_phonenumber :string
#

require 'test_helper'

class BookingTest < ActiveSupport::TestCase
  def test_booking_creates_new_event_after_update
    booking = Booking.create!(booker_name: 'Ricki', booker_email: 'example@ex.com', event_start: Date.today - 2.days - 2.hours, event_end: Date.today - 2.days, title: 'Booking Example', description: 'Booking example description', accept: false)

    booking.update!(accept: true)

    event = Event.last

    assert_equal event.start_time, Date.today - 2.days - 2.hours
    assert_equal event.end_time, Date.today - 2.days
    assert_equal event.title, 'Booking Example'
    assert_equal event.description, 'Booking example description'
  end
end
