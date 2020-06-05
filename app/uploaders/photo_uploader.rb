class PhotoUploader < CarrierWave::Uploader::Base
  after :store, :remove_original_file

  include CarrierWave::RMagick

  storage Settings.uploader.storage.to_sym

  # ~/[バケット名]/[foldername] 配下に画像がアップロード
  def store_dir
    'photo'
  end

  # Create different versions of your uploaded files:
  version :thumb do
    process resize_to_fit: [600, 300]
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
