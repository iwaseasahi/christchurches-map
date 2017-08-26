class PhotoUploader < CarrierWave::Uploader::Base
  after :store, :remove_original_file

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
    'photo'
  end

  # 画像がアップロードされていない場合の対応
  # public/images/default_top_image.jpgを読み込む
  def default_url(*_args)
    ActionController::Base.helpers.asset_path('church_top_2.jpg')
  end

  # Create different versions of your uploaded files:
  version :thumb do
    process :crop
    process resize_to_fit: [600, 300]
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

  # 元画像の削除
  def remove_original_file(_original_file)
    return if version_name.present?
    file.delete if file.exists?
  end

  # アップロード可能な形式
  def extension_whitelist
    %w[jpg jpeg gif png]
  end

  # アップロード時のファイル名を指定
  def filename
    return if original_filename.blank?
    "#{secure_token}.#{file.extension}"
  end

  protected

  def secure_token
    var = :"@#{mounted_as}_secure_token"
    model.instance_variable_get(var) || model.instance_variable_set(var, SecureRandom.uuid)
  end
end
