require 'carrierwave/storage/abstract'
require 'carrierwave/storage/file'
require 'carrierwave/storage/fog'

CarrierWave.configure do |config|
  if Settings.uploader.cloud?
    config.fog_credentials = {
      provider: 'AWS',
      aws_access_key_id: Rails.application.credentials.dig(:aws, :access_key_id),
      aws_secret_access_key: Rails.application.credentials.dig(:aws, :secret_access_key),
      region: Rails.application.credentials.dig(:aws, :region),
      path_style: true
    }
    config.fog_attributes = { 'Content-Type': 'image/jpg', 'Cache-Control': "max-age=#{1.week.to_i}" }
    # public-read
    config.fog_public = true
    config.fog_directory = Rails.application.credentials.dig(:aws, :s3_bucket)
    config.asset_host = Rails.application.credentials.dig(:aws, :s3_url)
    config.remove_previously_stored_files_after_update = false
  else
    config.storage = :file
    config.enable_processing = false
  end
end
CarrierWave::SanitizedFile.sanitize_regexp = /[^[:word:]\.\-\+]/
