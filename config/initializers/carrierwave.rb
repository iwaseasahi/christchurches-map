require 'carrierwave/storage/abstract'
require 'carrierwave/storage/file'
require 'carrierwave/storage/fog'

CarrierWave.configure do |config|
  config.fog_credentials = {
    provider: 'AWS',
    aws_access_key_id: ENV['AWS_ACCESS_KEY_ID'],
    aws_secret_access_key: ENV['AWS_SECRET_ACCESS_KEY'],
    region: ENV['AWS_REGION'],
    path_style: true
  }
  # public-read
  config.fog_public = true
  config.fog_directory = ENV['AWS_S3_BUCKET']
  config.asset_host = ENV['AWS_S3_URL']
  config.remove_previously_stored_files_after_update = false
end
CarrierWave::SanitizedFile.sanitize_regexp = /[^[:word:]\.\-\+]/
