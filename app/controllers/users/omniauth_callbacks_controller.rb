class Users::OmniauthCallbacksController < Devise::OmniauthCallbacksController
  ***REMOVED*** You should configure your model like this:
  ***REMOVED*** devise :omniauthable, omniauth_providers: [:twitter]

  ***REMOVED*** You should also create an action method in this controller like this:
  ***REMOVED*** def twitter
  ***REMOVED*** end

  ***REMOVED*** More info at:
  ***REMOVED*** https://github.com/plataformatec/devise***REMOVED***omniauth

  ***REMOVED*** GET|POST /resource/auth/twitter
  ***REMOVED*** def passthru
  ***REMOVED***   super
  ***REMOVED*** end

  ***REMOVED*** GET|POST /users/auth/twitter/callback
  ***REMOVED*** def failure
  ***REMOVED***   super
  ***REMOVED*** end

  ***REMOVED*** protected

  ***REMOVED*** The path used when OmniAuth fails
  ***REMOVED*** def after_omniauth_failure_path_for(scope)
  ***REMOVED***   super(scope)
  ***REMOVED*** end
end
