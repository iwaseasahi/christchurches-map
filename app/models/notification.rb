class Notification
  def self.notify_error_email(e)
    ExceptionNotifier.notify_exception(e)
  end
end
