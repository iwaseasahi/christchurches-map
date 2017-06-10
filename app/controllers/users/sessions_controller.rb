class Users::SessionsController < Devise::SessionsController
  ***REMOVED*** before_action :configure_sign_in_params, only: [:create]

  ***REMOVED*** GET /resource/sign_in
  ***REMOVED*** def new
  ***REMOVED***   super
  ***REMOVED*** end

  ***REMOVED*** POST /resource/sign_in
  ***REMOVED*** def create
  ***REMOVED***   super
  ***REMOVED*** end

  ***REMOVED*** DELETE /resource/sign_out
  ***REMOVED*** def destroy
  ***REMOVED***   super
  ***REMOVED*** end

  ***REMOVED*** protected

  ***REMOVED*** If you have extra params to permit, append them to the sanitizer.
  ***REMOVED*** def configure_sign_in_params
  ***REMOVED***   devise_parameter_sanitizer.permit(:sign_in, keys: [:attribute])
  ***REMOVED*** end
end
