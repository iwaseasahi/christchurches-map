class TopImageUploader < CarrierWave::Uploader::Base

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
    'top_image'
  end

  # 画像がアップロードされていない場合の対応
  # public/images/default_top_image.jpgを読み込む
  def default_url(*args)
    # For Rails 3.1+ asset pipeline compatibility:
    # ActionController::Base.helpers.asset_path("fallback/" + [version_name, "default.png"].compact.join('_'))
    # "/images/fallback/" + [version_name, "default.png"].compact.join('_')
    ActionController::Base.helpers.asset_path('church_top_2.jpg')
  end

  # Process files as they are uploaded:
  # process scale: [200, 300]
  #
  # def scale(width, height)
  #   # do something
  # end

  # Create different versions of your uploaded files:
  version :thumb do
    process :crop
    process resize_to_fit: [800, 400]
  end

  def crop
   manipulate! do |img|
     # 中央から切り取り
     gravity = Magick::CenterGravity
     crop_w = img.columns
     crop_h = img.rows
     img.crop!(gravity, crop_w, crop_h)
     img = yield(img) if block_given?
     img
   end
  end

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
