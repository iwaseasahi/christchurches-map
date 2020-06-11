require 'exception_notification/rails'



ExceptionNotification.configure do |config|
  ***REMOVED*** Ignore additional exception types.
  ***REMOVED*** ActiveRecord::RecordNotFound, Mongoid::Errors::DocumentNotFound, AbstractController::ActionNotFound and ActionController::RoutingError are already added.
  ***REMOVED*** config.ignored_exceptions += %w{ActionView::TemplateError CustomError}
  config.ignored_exceptions += %w[
    ActionController::InvalidAuthenticityToken
    ActionController::InvalidCrossOriginRequest
    AbstractController::DoubleRenderError
  ]

  ***REMOVED*** Adds a condition to decide when an exception must be ignored or not.
  ***REMOVED*** The ignore_if method can be invoked multiple times to add extra conditions.
  config.ignore_if do |_exception, _options|
    !Rails.env.production?
  end

  ***REMOVED*** Notifiers =================================================================

  ***REMOVED*** Email notifier sends notifications by email.
  config.add_notifier :email, {
    email_prefix:         '[キリスト教会マップERROR] ',
    sender_address:       %{"Notifier" <j.c.project153@gmail.com>},
    exception_recipients: %w{j.c.project153@gmail.com}
  }

  ***REMOVED*** Slack
  config.add_notifier :slack, {
    webhook_url: Rails.application.credentials.dig(:exception, :webhook_url),
    channel: '***REMOVED***exception_notifier',
  }

  ***REMOVED*** Campfire notifier sends notifications to your Campfire room. Requires 'tinder' gem.
  ***REMOVED*** config.add_notifier :campfire, {
  ***REMOVED***   :subdomain => 'my_subdomain',
  ***REMOVED***   :token => 'my_token',
  ***REMOVED***   :room_name => 'my_room'
  ***REMOVED*** }

  ***REMOVED*** HipChat notifier sends notifications to your HipChat room. Requires 'hipchat' gem.
  ***REMOVED*** config.add_notifier :hipchat, {
  ***REMOVED***   :api_token => 'my_token',
  ***REMOVED***   :room_name => 'my_room'
  ***REMOVED*** }
end
