class PicturesUploader < CarrierWave::Uploader::Base
  include CarrierWave::MiniMagick
  storage :file
  # storage :fog

  # Override the directory where uploaded files will be stored.
  # This is a sensible default for uploaders that are meant to be mounted:
  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end

  process :auto_orient

  def auto_orient
   manipulate! do |image|
     image.tap(&:auto_orient)
   end
  end

end
