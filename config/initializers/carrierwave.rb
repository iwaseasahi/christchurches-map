require 'carrierwave/storage/abstract'
require 'carrierwave/storage/file'
require 'carrierwave/storage/fog'

CarrierWave.configure do |config|
  if Settings.uploader.cloud?
    config.fog_credentials = {
      provider: 'AWS',
      aws_access_key_id: ENV['AWS_ACCESS_KEY_ID'],
      aws_secret_access_key: ENV['AWS_SECRET_ACCESS_KEY'],
      region: ENV['AWS_REGION'],
      path_style: true
    }
    config.fog_attributes = { 'Content-Type': 'image/jpg', 'Cache-Control': "max-age=#{1.week.to_i}" }
    # public-read
    config.fog_public = true
    config.fog_directory = ENV['AWS_S3_BUCKET']
    config.asset_host = ENV['AWS_S3_URL']
    config.remove_previously_stored_files_after_update = false
  else
    config.storage = :file
    config.enable_processing = false
  end
end
CarrierWave::SanitizedFile.sanitize_regexp = /[^[:word:]\.\-\+]/
