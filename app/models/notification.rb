class Notification
  def self.notify_error_email(e)
    Rails.logger.error e
    Rails.logger.error e.backtrace.join('\n')
    ExceptionNotifier.notify_exception(e)
  end
end
