class IconUploader < CarrierWave::Uploader::Base

  include CarrierWave::RMagick

  storage :fog

  def fog_attributes
    {
      'Content-Type':  'image/jpg',
      'Cache-Control': "max-age=#{1.week.to_i}"
    }
  end

  # ~/[バケット名]/[foldername] 配下に画像がアップロード
  def store_dir
    'user_icon'
  end

  # def store_dir
  #   "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  # end

  # Provide a default URL as a default if there hasn't been a file uploaded:
  # def default_url(*args)
  #   # For Rails 3.1+ asset pipeline compatibility:
  #   # ActionController::Base.helpers.asset_path("fallback/" + [version_name, "default.png"].compact.join('_'))
  #
  #   "/images/fallback/" + [version_name, "default.png"].compact.join('_')
  # end

  # Process files as they are uploaded:
  # process scale: [200, 300]
  #
  # def scale(width, height)
  #   # do something
  # end

  # Create different versions of your uploaded files:
  # version :thumb do
  #   process resize_to_fit: [50, 50]
  # end

  # アップロード可能な形式
  def extension_whitelist
    %w(jpg jpeg gif png)
  end

  # アップロード時のファイル名を指定
  def filename
    if original_filename.present?
      "#{model.id}_#{secure_token}.#{file.extension}"
    end
  end

  protected

  def secure_token
    var = :"@#{mounted_as}_secure_token"
    model.instance_variable_get(var) or model.instance_variable_set(var, SecureRandom.uuid)
  end
end
