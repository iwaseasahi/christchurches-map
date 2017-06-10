class Users::ConfirmationsController < Devise::ConfirmationsController
  ***REMOVED*** GET /resource/confirmation/new
  ***REMOVED*** def new
  ***REMOVED***   super
  ***REMOVED*** end

  ***REMOVED*** POST /resource/confirmation
  ***REMOVED*** def create
  ***REMOVED***   super
  ***REMOVED*** end

  ***REMOVED*** GET /resource/confirmation?confirmation_token=abcdef
  ***REMOVED*** def show
  ***REMOVED***   super
  ***REMOVED*** end

  ***REMOVED*** protected

  ***REMOVED*** The path used after resending confirmation instructions.
  ***REMOVED*** def after_resending_confirmation_instructions_path_for(resource_name)
  ***REMOVED***   super(resource_name)
  ***REMOVED*** end

  ***REMOVED*** The path used after confirmation.
  ***REMOVED*** def after_confirmation_path_for(resource_name, resource)
  ***REMOVED***   super(resource_name, resource)
  ***REMOVED*** end
end
