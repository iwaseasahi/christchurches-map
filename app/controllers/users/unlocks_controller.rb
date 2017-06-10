class Users::UnlocksController < Devise::UnlocksController
  ***REMOVED*** GET /resource/unlock/new
  ***REMOVED*** def new
  ***REMOVED***   super
  ***REMOVED*** end

  ***REMOVED*** POST /resource/unlock
  ***REMOVED*** def create
  ***REMOVED***   super
  ***REMOVED*** end

  ***REMOVED*** GET /resource/unlock?unlock_token=abcdef
  ***REMOVED*** def show
  ***REMOVED***   super
  ***REMOVED*** end

  ***REMOVED*** protected

  ***REMOVED*** The path used after sending unlock password instructions
  ***REMOVED*** def after_sending_unlock_instructions_path_for(resource)
  ***REMOVED***   super(resource)
  ***REMOVED*** end

  ***REMOVED*** The path used after unlocking the resource
  ***REMOVED*** def after_unlock_path_for(resource)
  ***REMOVED***   super(resource)
  ***REMOVED*** end
end
