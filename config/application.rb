require_relative 'boot'

require 'rails/all'

***REMOVED*** Require the gems listed in Gemfile, including any gems
***REMOVED*** you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module ChristchurchesMap
  class Application < Rails::Application
    ***REMOVED*** Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 6.0

    ***REMOVED*** Settings in config/environments/* take precedence over those specified here.
    ***REMOVED*** Application configuration should go into files in config/initializers
    ***REMOVED*** -- all .rb files in that directory are automatically loaded.

    ***REMOVED*** 時間表示を変更
    config.time_zone = 'Tokyo'

    ***REMOVED*** データベースの保存時間を変更
    config.active_record.default_timezone = :local

    ***REMOVED*** Active Job のキューアダプタとして Sidekiq を使用
    config.active_job.queue_adapter = :sidekiq

    ***REMOVED*** テストの設定
    config.generators do |g|
      g.test_framework :rspec,
        fixtures: true,
        view_specs: false,
        helper_specs: false,
        routing_specs: false,
        controller_specs: true,
        request_specs: false
      g.fixture_replacement :factory_girl, dir: 'spec/factories'
    end
  end
end
