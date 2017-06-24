require_relative 'boot'

require 'rails/all'

***REMOVED*** Require the gems listed in Gemfile, including any gems
***REMOVED*** you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module ChristchurchesMap
  class Application < Rails::Application
    ***REMOVED*** Settings in config/environments/* take precedence over those specified here.
    ***REMOVED*** Application configuration should go into files in config/initializers
    ***REMOVED*** -- all .rb files in that directory are automatically loaded.

    ***REMOVED*** 時間表示を変更
    config.time_zone = 'Tokyo'

    ***REMOVED*** データベースの保存時間を変更
    config.active_record.default_timezone = :local
  end
end
