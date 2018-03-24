require 'exception_notification/rails'



ExceptionNotification.configure do |config|
  # Ignore additional exception types.
  # ActiveRecord::RecordNotFound, Mongoid::Errors::DocumentNotFound, AbstractController::ActionNotFound and ActionController::RoutingError are already added.
  # config.ignored_exceptions += %w{ActionView::TemplateError CustomError}
  config.ignored_exceptions += %w[
    ActionController::InvalidAuthenticityToken
    ActionController::InvalidCrossOriginRequest
    AbstractController::DoubleRenderError
  ]

  # Adds a condition to decide when an exception must be ignored or not.
  # The ignore_if method can be invoked multiple times to add extra conditions.
  config.ignore_if do |exception, options|
    not Rails.env.production?
  end

  # Notifiers =================================================================

  # Email notifier sends notifications by email.
  config.add_notifier :email, {
    email_prefix:         '[キリスト教会マップERROR] ',
    sender_address:       %{"Notifier" <j.c.project153@gmail.com>},
    exception_recipients: %w{j.c.project153@gmail.com}
  }

  # Slack
  config.add_notifier :slack, {
    webhook_url: 'https://hooks.slack.com/services/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',
    channel: '#exception_notifier',
  }

  # Campfire notifier sends notifications to your Campfire room. Requires 'tinder' gem.
  # config.add_notifier :campfire, {
  #   :subdomain => 'my_subdomain',
  #   :token => 'my_token',
  #   :room_name => 'my_room'
  # }

  # HipChat notifier sends notifications to your HipChat room. Requires 'hipchat' gem.
  # config.add_notifier :hipchat, {
  #   :api_token => 'my_token',
  #   :room_name => 'my_room'
  # }
end
