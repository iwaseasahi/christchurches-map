class IconUploader < CarrierWave::Uploader::Base

  include CarrierWave::RMagick

  storage :fog

  def fog_attributes
    {
      'Content-Type':  'image/jpg',
      'Cache-Control': "max-age=***REMOVED***{1.week.to_i}"
    }
  end

  ***REMOVED*** ~/[バケット名]/[foldername] 配下に画像がアップロード
  def store_dir
    'user_icon'
  end

  ***REMOVED*** def store_dir
  ***REMOVED***   "uploads/***REMOVED***{model.class.to_s.underscore}/***REMOVED***{mounted_as}/***REMOVED***{model.id}"
  ***REMOVED*** end

  ***REMOVED*** 画像がアップロードされていない場合の対応
  ***REMOVED*** public/images/default_icon.jpgを読み込む
  def default_url(*args)
    ***REMOVED*** For Rails 3.1+ asset pipeline compatibility:
    ***REMOVED*** ActionController::Base.helpers.asset_path("fallback/" + [version_name, "default.png"].compact.join('_'))
    ***REMOVED*** "/images/fallback/" + [version_name, "default_icon.png"].compact.join('_')
    'default_icon.jpg'
  end

  ***REMOVED*** Process files as they are uploaded:
  ***REMOVED*** process scale: [200, 300]
  ***REMOVED***
  ***REMOVED*** def scale(width, height)
  ***REMOVED***   ***REMOVED*** do something
  ***REMOVED*** end

  ***REMOVED*** Create different versions of your uploaded files:
  ***REMOVED*** version :thumb do
  ***REMOVED***   process resize_to_fit: [50, 50]
  ***REMOVED*** end

  ***REMOVED*** アップロード可能な形式
  def extension_whitelist
    %w(jpg jpeg gif png)
  end

  ***REMOVED*** アップロード時のファイル名を指定
  def filename
    if original_filename.present?
      "***REMOVED***{model.id}_***REMOVED***{secure_token}.***REMOVED***{file.extension}"
    end
  end

  protected

  def secure_token
    var = :"@***REMOVED***{mounted_as}_secure_token"
    model.instance_variable_get(var) or model.instance_variable_set(var, SecureRandom.uuid)
  end
end
