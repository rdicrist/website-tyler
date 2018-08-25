# == Schema Information
#
# Table name: videos
#
#  id          :bigint(8)        not null, primary key
#  title       :string
#  video       :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  category_id :bigint(8)
#

require 'test_helper'

class VideoTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
