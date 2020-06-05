class TopImageUploader < CarrierWave::Uploader::Base
  after :store, :remove_original_file

  include CarrierWave::RMagick

  storage Settings.uploader.storage.to_sym

  ***REMOVED*** ~/[バケット名]/[foldername] 配下に画像がアップロード
  def store_dir
    'top_image'
  end

  ***REMOVED*** 画像がアップロードされていない場合
  def default_url(*_args)
    ActionController::Base.helpers.asset_path('church_top_2.jpg')
  end

  ***REMOVED*** Create different versions of your uploaded files:
  version :thumb do
    process resize_to_fit: [800, 400]
  end

  ***REMOVED*** 元画像の削除
  def remove_original_file(_original_file)
    return if version_name.present?

    file.delete if file.exists?
  end

  ***REMOVED*** アップロード可能な形式
  def extension_whitelist
    %w[jpg jpeg gif png]
  end

  ***REMOVED*** アップロード時のファイル名を指定
  def filename
    return if original_filename.blank?

    "***REMOVED***{model.id}_***REMOVED***{secure_token}.***REMOVED***{file.extension}"
  end

  protected

  def secure_token
    var = :"@***REMOVED***{mounted_as}_secure_token"
    model.instance_variable_get(var) || model.instance_variable_set(var, SecureRandom.uuid)
  end
end
