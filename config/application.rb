require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module ChristchurchesMap
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.

    # 時間表示を変更
    config.time_zone = 'Tokyo'

    # データベースの保存時間を変更
    config.active_record.default_timezone = :local

    # Active Job のキューアダプタとして Sidekiq を使用
    config.active_job.queue_adapter = :sidekiq
  end
end
