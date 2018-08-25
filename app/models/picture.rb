# == Schema Information
#
# Table name: pictures
#
#  id         :bigint(8)        not null, primary key
#  title      :string
#  picture    :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Picture < ApplicationRecord
  mount_uploader :picture, PicturesUploader
end
