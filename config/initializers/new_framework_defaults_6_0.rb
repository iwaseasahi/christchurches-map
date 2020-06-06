***REMOVED*** Be sure to restart your server when you modify this file.
***REMOVED***
***REMOVED*** This file contains migration options to ease your Rails 6.0 upgrade.
***REMOVED***
***REMOVED*** Once upgraded flip defaults one by one to migrate to the new default.
***REMOVED***
***REMOVED*** Read the Guide for Upgrading Ruby on Rails for more info on each option.

***REMOVED*** Don't force requests from old versions of IE to be UTF-8 encoded.
***REMOVED*** Rails.application.config.action_view.default_enforce_utf8 = false

***REMOVED*** Embed purpose and expiry metadata inside signed and encrypted
***REMOVED*** cookies for increased security.
***REMOVED***
***REMOVED*** This option is not backwards compatible with earlier Rails versions.
***REMOVED*** It's best enabled when your entire app is migrated and stable on 6.0.
***REMOVED*** Rails.application.config.action_dispatch.use_cookies_with_metadata = true

***REMOVED*** Change the return value of `ActionDispatch::Response***REMOVED***content_type` to Content-Type header without modification.
***REMOVED*** Rails.application.config.action_dispatch.return_only_media_type_on_content_type = false

***REMOVED*** Return false instead of self when enqueuing is aborted from a callback.
***REMOVED*** Rails.application.config.active_job.return_false_on_aborted_enqueue = true

***REMOVED*** Send Active Storage analysis and purge jobs to dedicated queues.
***REMOVED*** Rails.application.config.active_storage.queues.analysis = :active_storage_analysis
***REMOVED*** Rails.application.config.active_storage.queues.purge    = :active_storage_purge

***REMOVED*** When assigning to a collection of attachments declared via `has_many_attached`, replace existing
***REMOVED*** attachments instead of appending. Use ***REMOVED***attach to add new attachments without replacing existing ones.
***REMOVED*** Rails.application.config.active_storage.replace_on_assign_to_many = true

***REMOVED*** Use ActionMailer::MailDeliveryJob for sending parameterized and normal mail.
***REMOVED***
***REMOVED*** The default delivery jobs (ActionMailer::Parameterized::DeliveryJob, ActionMailer::DeliveryJob),
***REMOVED*** will be removed in Rails 6.1. This setting is not backwards compatible with earlier Rails versions.
***REMOVED*** If you send mail in the background, job workers need to have a copy of
***REMOVED*** MailDeliveryJob to ensure all delivery jobs are processed properly.
***REMOVED*** Make sure your entire app is migrated and stable on 6.0 before using this setting.
***REMOVED*** Rails.application.config.action_mailer.delivery_job = "ActionMailer::MailDeliveryJob"

***REMOVED*** Enable the same cache key to be reused when the object being cached of type
***REMOVED*** `ActiveRecord::Relation` changes by moving the volatile information (max updated at and count)
***REMOVED*** of the relation's cache key into the cache version to support recycling cache key.
***REMOVED*** Rails.application.config.active_record.collection_cache_versioning = true
