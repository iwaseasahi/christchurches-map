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
  end
end
