# == Schema Information
#
# Table name: events
#
#  id          :bigint(8)        not null, primary key
#  start_time  :datetime
#  end_time    :datetime
#  title       :string
#  description :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Event < ApplicationRecord
end
