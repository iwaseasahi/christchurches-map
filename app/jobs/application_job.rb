class ApplicationJob < ActiveJob::Base
  ***REMOVED*** Automatically retry jobs that encountered a deadlock
  ***REMOVED*** retry_on ActiveRecord::Deadlocked

  ***REMOVED*** Most jobs are safe to ignore if the underlying records are no longer available
  ***REMOVED*** discard_on ActiveJob::DeserializationError
end
