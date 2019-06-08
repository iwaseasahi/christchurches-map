***REMOVED*** This file is copied to spec/ when you run 'rails generate rspec:install'
ENV["RAILS_ENV"] ||= 'test'
require 'spec_helper'
require File.expand_path("../../config/environment", __FILE__)
require 'rspec/rails'
***REMOVED*** Add additional requires below this line. Rails is not loaded until this point!
require 'support/factory_bot'

***REMOVED*** Requires supporting ruby files with custom matchers and macros, etc, in
***REMOVED*** spec/support/ and its subdirectories. Files matching `spec/**/*_spec.rb` are
***REMOVED*** run as spec files by default. This means that files in spec/support that end
***REMOVED*** in _spec.rb will both be required and run as specs, causing the specs to be
***REMOVED*** run twice. It is recommended that you do not name files matching this glob to
***REMOVED*** end with _spec.rb. You can configure this pattern with the --pattern
***REMOVED*** option on the command line or in ~/.rspec, .rspec or `.rspec-local`.
***REMOVED***
***REMOVED*** The following line is provided for convenience purposes. It has the downside
***REMOVED*** of increasing the boot-up time by auto-requiring all files in the support
***REMOVED*** directory. Alternatively, in the individual `*_spec.rb` files, manually
***REMOVED*** require only the support files necessary.
***REMOVED***
Dir[Rails.root.join("spec/support/**/*.rb")].each { |f| require f }

***REMOVED*** Checks for pending migrations before tests are run.
***REMOVED*** If you are not using ActiveRecord, you can remove this line.
ActiveRecord::Migration.maintain_test_schema!

RSpec.configure do |config|
  ***REMOVED*** Remove this line if you're not using ActiveRecord or ActiveRecord fixtures
  ***REMOVED*** config.fixture_path = "***REMOVED***{::Rails.root}/spec/fixtures"

  ***REMOVED*** If you're not using ActiveRecord, or you'd prefer not to run each of your
  ***REMOVED*** examples within a transaction, remove the following line or assign false
  ***REMOVED*** instead of true.
  config.use_transactional_fixtures = true

  ***REMOVED*** RSpec Rails can automatically mix in different behaviours to your tests
  ***REMOVED*** based on their file location, for example enabling you to call `get` and
  ***REMOVED*** `post` in specs under `spec/controllers`.
  ***REMOVED***
  ***REMOVED*** You can disable this behaviour by removing the line below, and instead
  ***REMOVED*** explicitly tag your specs with their type, e.g.:
  ***REMOVED***
  ***REMOVED***     RSpec.describe UsersController, :type => :controller do
  ***REMOVED***       ***REMOVED*** ...
  ***REMOVED***     end
  ***REMOVED***
  ***REMOVED*** The different available types are documented in the features, such as in
  ***REMOVED*** https://relishapp.com/rspec/rspec-rails/docs
  config.infer_spec_type_from_file_location!

  ***REMOVED*** RSpecでコントローラーのテストを実行
  config.include Devise::Test::ControllerHelpers, type: :controller
  config.include Devise::Test::ControllerHelpers, type: :view

  %i[controller view request].each do |type|
    config.include ::Rails::Controller::Testing::TestProcess, type: :type
    config.include ::Rails::Controller::Testing::TemplateAssertions, type: :type
    config.include ::Rails::Controller::Testing::Integration, type: :type
  end

  ***REMOVED*** 共通の mack
  config.include DisableGeocoder
end
