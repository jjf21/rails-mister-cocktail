# encoding: utf-8

class PhotoUploader < CarrierWave::Uploader::Base
  include Cloudinary::CarrierWave

  process eager: true  # Force version generation at upload time.

  process convert: 'png'

  version :standard do
    resize_to_fit 500, 500
  end

  version :card do
    resize_to_fit 350, 175
  end

end
