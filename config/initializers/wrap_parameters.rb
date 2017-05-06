***REMOVED*** Be sure to restart your server when you modify this file.

***REMOVED*** This file contains settings for ActionController::ParamsWrapper which
***REMOVED*** is enabled by default.

***REMOVED*** Enable parameter wrapping for JSON. You can disable this by setting :format to an empty array.
ActiveSupport.on_load(:action_controller) do
  wrap_parameters format: [:json]
end

***REMOVED*** To enable root element in JSON for ActiveRecord objects.
***REMOVED*** ActiveSupport.on_load(:active_record) do
***REMOVED***   self.include_root_in_json = true
***REMOVED*** end
