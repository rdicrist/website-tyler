class Picture < ApplicationRecord
  mount_uploader :picture, PicturesUploader
end
