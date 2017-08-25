class Users::RegistrationsController < Devise::RegistrationsController
  before_action :configure_sign_up_params, only: %i(create)
  before_action :configure_account_update_params, only: %i(update)

  ***REMOVED*** GET /resource/sign_up
  ***REMOVED*** def new
  ***REMOVED***   super
  ***REMOVED*** end

  ***REMOVED*** POST /resource
  def create
    super
    UserMailer.registration_confirmation(resource).deliver_later unless resource.invalid?
  end

  ***REMOVED*** GET /resource/edit
  ***REMOVED*** def edit
  ***REMOVED***   super
  ***REMOVED*** end

  ***REMOVED*** PUT /resource
  ***REMOVED*** def update
  ***REMOVED***   super
  ***REMOVED*** end

  ***REMOVED*** DELETE /resource
  ***REMOVED*** def destroy
  ***REMOVED***   super
  ***REMOVED*** end

  ***REMOVED*** GET /resource/cancel
  ***REMOVED*** Forces the session data which is usually expired after sign
  ***REMOVED*** in to be expired now. This is useful if the user wants to
  ***REMOVED*** cancel oauth signing in/up in the middle of the process,
  ***REMOVED*** removing all OAuth session data.
  ***REMOVED*** def cancel
  ***REMOVED***   super
  ***REMOVED*** end

  protected

  ***REMOVED*** If you have extra params to permit, append them to the sanitizer.
  def configure_sign_up_params
    devise_parameter_sanitizer.permit(:sign_up, keys: %i(last_name first_name))
  end

  ***REMOVED*** If you have extra params to permit, append them to the sanitizer.
  def configure_account_update_params
    devise_parameter_sanitizer.permit(:account_update, keys: %i(last_name first_name))
  end

  ***REMOVED*** The path used after sign up.
  ***REMOVED*** def after_sign_up_path_for(resource)
  ***REMOVED***   super(resource)
  ***REMOVED*** end

  ***REMOVED*** The path used after sign up for inactive accounts.
  ***REMOVED*** def after_inactive_sign_up_path_for(resource)
  ***REMOVED***   super(resource)
  ***REMOVED*** end
end
