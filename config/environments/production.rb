Rails.application.configure do
  ***REMOVED*** Settings specified here will take precedence over those in config/application.rb.

  ***REMOVED*** Code is not reloaded between requests.
  config.cache_classes = true

  ***REMOVED*** Eager load code on boot. This eager loads most of Rails and
  ***REMOVED*** your application in memory, allowing both threaded web servers
  ***REMOVED*** and those relying on copy on write to perform better.
  ***REMOVED*** Rake tasks automatically ignore this option for performance.
  config.eager_load = true

  ***REMOVED*** Full error reports are disabled and caching is turned on.
  config.consider_all_requests_local       = false
  config.action_controller.perform_caching = true

  ***REMOVED*** Ensures that a master key has been made available in either ENV["RAILS_MASTER_KEY"]
  ***REMOVED*** or in config/master.key. This key is used to decrypt credentials (and other encrypted files).
  ***REMOVED*** config.require_master_key = true

  ***REMOVED*** Disable serving static files from the `/public` folder by default since
  ***REMOVED*** Apache or NGINX already handles this.
  config.public_file_server.enabled = ENV['RAILS_SERVE_STATIC_FILES'].present?

  ***REMOVED*** Compress CSS using a preprocessor.
  ***REMOVED*** config.assets.css_compressor = :sass

  ***REMOVED*** Do not fallback to assets pipeline if a precompiled asset is missed.
  config.assets.compile = false

  ***REMOVED*** Enable serving of images, stylesheets, and JavaScripts from an asset server.
  ***REMOVED*** config.action_controller.asset_host = 'http://assets.example.com'

  ***REMOVED*** Specifies the header that your server uses for sending files.
  ***REMOVED*** config.action_dispatch.x_sendfile_header = 'X-Sendfile' ***REMOVED*** for Apache
  ***REMOVED*** config.action_dispatch.x_sendfile_header = 'X-Accel-Redirect' ***REMOVED*** for NGINX

  ***REMOVED*** Store uploaded files on the local file system (see config/storage.yml for options).
  config.active_storage.service = :local

  ***REMOVED*** Mount Action Cable outside main process or domain.
  ***REMOVED*** config.action_cable.mount_path = nil
  ***REMOVED*** config.action_cable.url = 'wss://example.com/cable'
  ***REMOVED*** config.action_cable.allowed_request_origins = [ 'http://example.com', /http:\/\/example.*/ ]

  ***REMOVED*** Force all access to the app over SSL, use Strict-Transport-Security, and use secure cookies.
  ***REMOVED*** config.force_ssl = true

  ***REMOVED*** Use the lowest log level to ensure availability of diagnostic information
  ***REMOVED*** when problems arise.
  config.log_level = :info

  ***REMOVED*** Prepend all log lines with the following tags.
  config.log_tags = [ :request_id ]

  ***REMOVED*** Use a different cache store in production.
  ***REMOVED*** config.cache_store = :mem_cache_store

  ***REMOVED*** Use a real queuing backend for Active Job (and separate queues per environment).
  ***REMOVED*** config.active_job.queue_adapter     = :resque
  ***REMOVED*** config.active_job.queue_name_prefix = "christchurches_map_production"

  ***REMOVED*** mailer conf
  config.action_mailer.default_url_options = { host: 'www.christchurches-map.com' }
  config.action_mailer.delivery_method = :smtp

  config.action_mailer.raise_delivery_errors = true
  config.action_mailer.smtp_settings = {
    enable_starttls_auto: true,
    address: 'smtp.gmail.com',
    port: '587',
    domain: 'christchurches-map.com',
    authentication: 'plain',
    user_name: 'j.c.project153@gmail.com',
    password: Rails.application.credentials.gmail[:password]
  }
  config.action_mailer.perform_caching = false

  ***REMOVED*** Ignore bad email addresses and do not raise email delivery errors.
  ***REMOVED*** Set this to true and configure the email server for immediate delivery to raise delivery errors.
  ***REMOVED*** config.action_mailer.raise_delivery_errors = false

  ***REMOVED*** Enable locale fallbacks for I18n (makes lookups for any locale fall back to
  ***REMOVED*** the I18n.default_locale when a translation cannot be found).
  config.i18n.fallbacks = true

  ***REMOVED*** Send deprecation notices to registered listeners.
  config.active_support.deprecation = :notify

  ***REMOVED*** Use default logging formatter so that PID and timestamp are not suppressed.
  config.log_formatter = ::Logger::Formatter.new

  ***REMOVED*** Use a different logger for distributed setups.
  ***REMOVED*** require 'syslog/logger'
  ***REMOVED*** config.logger = ActiveSupport::TaggedLogging.new(Syslog::Logger.new 'app-name')
  config.logger = Logger.new('log/production.log', 5, 10 * 1024 * 1024)

  if ENV["RAILS_LOG_TO_STDOUT"].present?
    logger           = ActiveSupport::Logger.new(STDOUT)
    logger.formatter = config.log_formatter
    config.logger    = ActiveSupport::TaggedLogging.new(logger)
  end

  ***REMOVED*** Do not dump schema after migrations.
  config.active_record.dump_schema_after_migration = false

  ***REMOVED*** Googleアナリティクス
  ***REMOVED*** トラッキングIDを記載
  GA.tracker = Rails.application.credentials.google_analytics[:tracker_id]

  ***REMOVED*** Inserts middleware to perform automatic connection switching.
  ***REMOVED*** The `database_selector` hash is used to pass options to the DatabaseSelector
  ***REMOVED*** middleware. The `delay` is used to determine how long to wait after a write
  ***REMOVED*** to send a subsequent read to the primary.
  ***REMOVED***
  ***REMOVED*** The `database_resolver` class is used by the middleware to determine which
  ***REMOVED*** database is appropriate to use based on the time delay.
  ***REMOVED***
  ***REMOVED*** The `database_resolver_context` class is used by the middleware to set
  ***REMOVED*** timestamps for the last write to the primary. The resolver uses the context
  ***REMOVED*** class timestamps to determine how long to wait before reading from the
  ***REMOVED*** replica.
  ***REMOVED***
  ***REMOVED*** By default Rails will store a last write timestamp in the session. The
  ***REMOVED*** DatabaseSelector middleware is designed as such you can define your own
  ***REMOVED*** strategy for connection switching and pass that into the middleware through
  ***REMOVED*** these configuration options.
  ***REMOVED*** config.active_record.database_selector = { delay: 2.seconds }
  ***REMOVED*** config.active_record.database_resolver = ActiveRecord::Middleware::DatabaseSelector::Resolver
  ***REMOVED*** config.active_record.database_resolver_context = ActiveRecord::Middleware::DatabaseSelector::Resolver::Session
end
