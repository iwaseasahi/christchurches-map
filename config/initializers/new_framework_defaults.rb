***REMOVED*** Be sure to restart your server when you modify this file.
***REMOVED***
***REMOVED*** This file contains migration options to ease your Rails 5.0 upgrade.
***REMOVED***
***REMOVED*** Read the Guide for Upgrading Ruby on Rails for more info on each option.

***REMOVED*** Enable per-form CSRF tokens. Previous versions had false.
Rails.application.config.action_controller.per_form_csrf_tokens = true

***REMOVED*** Enable origin-checking CSRF mitigation. Previous versions had false.
Rails.application.config.action_controller.forgery_protection_origin_check = true

***REMOVED*** Make Ruby 2.4 preserve the timezone of the receiver when calling `to_time`.
***REMOVED*** Previous versions had false.
ActiveSupport.to_time_preserves_timezone = true

***REMOVED*** Require `belongs_to` associations by default. Previous versions had false.
Rails.application.config.active_record.belongs_to_required_by_default = true

***REMOVED*** Configure SSL options to enable HSTS with subdomains. Previous versions had false.
Rails.application.config.ssl_options = { hsts: { subdomains: true } }
