Rails.application.configure do
  ***REMOVED*** Settings specified here will take precedence over those in config/application.rb.

  ***REMOVED*** In the development environment your application's code is reloaded on
  ***REMOVED*** every request. This slows down response time but is perfect for development
  ***REMOVED*** since you don't have to restart the web server when you make code changes.
  config.cache_classes = false

  ***REMOVED*** Do not eager load code on boot.
  config.eager_load = false

  ***REMOVED*** Show full error reports.
  config.consider_all_requests_local = true

  ***REMOVED*** Enable/disable caching. By default caching is disabled.
  ***REMOVED*** Run rails dev:cache to toggle caching.
  if Rails.root.join('tmp', 'caching-dev.txt').exist?
    config.action_controller.perform_caching = true
    config.action_controller.enable_fragment_cache_logging = true

    config.cache_store = :memory_store
    config.public_file_server.headers = {
      'Cache-Control' => "public, max-age=***REMOVED***{2.days.to_i}"
    }
  else
    config.action_controller.perform_caching = false

    config.cache_store = :null_store
  end

  ***REMOVED*** Store uploaded files on the local file system (see config/storage.yml for options).
  config.active_storage.service = :local

  ***REMOVED*** Don't care if the mailer can't send.
  config.action_mailer.raise_delivery_errors = false

  ***REMOVED*** mailer conf
  config.action_mailer.default_url_options = { host: 'localhost', port: 3000 }
  config.action_mailer.delivery_method = :letter_opener
  config.action_mailer.perform_deliveries = true
  config.action_mailer.smtp_settings = { address: 'localhost', port: 1025 }
  config.action_mailer.perform_caching = false

  ***REMOVED*** Print deprecation notices to the Rails logger.
  config.active_support.deprecation = :log

  ***REMOVED*** Raise an error on page load if there are pending migrations.
  config.active_record.migration_error = :page_load

  ***REMOVED*** Highlight code that triggered database queries in logs.
  config.active_record.verbose_query_logs = true

  ***REMOVED*** Debug mode disables concatenation and preprocessing of assets.
  ***REMOVED*** This option may cause significant delays in view rendering with a large
  ***REMOVED*** number of complex assets.
  config.assets.debug = true

  ***REMOVED*** Suppress logger output for asset requests.
  config.assets.quiet = true

  ***REMOVED*** Raises error for missing translations.
  ***REMOVED*** config.action_view.raise_on_missing_translations = true

  ***REMOVED*** Use an evented file watcher to asynchronously detect changes in source code,
  ***REMOVED*** routes, locales, etc. This feature depends on the listen gem.
  config.file_watcher = ActiveSupport::EventedFileUpdateChecker
end
