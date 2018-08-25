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

class Booking < ApplicationRecord
  after_update :create_new_event

  def create_new_event
    Event.create!(start_time: event_start, end_time: event_end, title: title, description: description) if self.accept == true
    self.destroy if self.accept == false
  end
end
