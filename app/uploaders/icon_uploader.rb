class IconUploader < CarrierWave::Uploader::Base
  after :store, :remove_original_file

  include CarrierWave::RMagick

  storage Settings.uploader.storage.to_sym

  # ~/[バケット名]/[foldername] 配下に画像がアップロード
  def store_dir
    'user_icon'
  end

  # 画像がアップロードされていない場合
  def default_url(*_args)
    ActionController::Base.helpers.asset_path('default_icon.jpg')
  end

  # Create different versions of your uploaded files:
  version :thumb do
    process :crop
    process resize_to_fit: [100, 100]
  end

  def crop
    manipulate! do |img|
      # 中央から切り取り & 画像のサイズが縦横小さい方に合わせて正方形にトリミング
      min_size = [img.columns, img.rows].min
      img.crop!(Magick::CenterGravity, min_size, min_size)
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
    "#{model.id}_#{secure_token}.#{file.extension}" if original_filename.present?
  end

  protected

  def secure_token
    var = :"@#{mounted_as}_secure_token"
    model.instance_variable_get(var) || model.instance_variable_set(var, SecureRandom.uuid)
  end
end
