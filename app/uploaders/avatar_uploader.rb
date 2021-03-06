class AvatarUploader < CarrierWave::Uploader::Base
  include Cloudinary::CarrierWave

  version :small do
    resize_to_fill(60, 60)
  end

  version :middle do
    resize_to_fill(150, 150)
  end

  version :large do
    resize_to_fill(300, 300)
  end

  version :user_index do
    resize_to_fill(150, 150, 'face')
  end

  version :user_show do
    resize_to_fill(500, 500, 'face')
  end
end
