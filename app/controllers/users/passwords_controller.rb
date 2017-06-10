class Users::PasswordsController < Devise::PasswordsController
  ***REMOVED*** GET /resource/password/new
  ***REMOVED*** def new
  ***REMOVED***   super
  ***REMOVED*** end

  ***REMOVED*** POST /resource/password
  ***REMOVED*** def create
  ***REMOVED***   super
  ***REMOVED*** end

  ***REMOVED*** GET /resource/password/edit?reset_password_token=abcdef
  ***REMOVED*** def edit
  ***REMOVED***   super
  ***REMOVED*** end

  ***REMOVED*** PUT /resource/password
  ***REMOVED*** def update
  ***REMOVED***   super
  ***REMOVED*** end

  ***REMOVED*** protected

  ***REMOVED*** def after_resetting_password_path_for(resource)
  ***REMOVED***   super(resource)
  ***REMOVED*** end

  ***REMOVED*** The path used after sending reset password instructions
  ***REMOVED*** def after_sending_reset_password_instructions_path_for(resource_name)
  ***REMOVED***   super(resource_name)
  ***REMOVED*** end
end
