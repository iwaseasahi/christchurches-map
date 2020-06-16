Raven.configure do |config|
  config.dsn = Rails.application.credentials.dig(:sentry, :dns)
  config.sanitize_fields = Rails.application.config.filter_parameters.map(&:to_s)
  config.environments = %w[production]
  config.async = ->(event) { SentryJob.perform_later(event) }
  config.excluded_exceptions += %w[ActionController::MissingExactTemplate]
end
