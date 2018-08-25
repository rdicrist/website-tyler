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

class Video < ApplicationRecord
  enum category: {'jazz':0, 'blues':1, 'country':2}

  mount_uploader :video, VideoUploader
end
