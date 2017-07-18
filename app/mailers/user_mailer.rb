class UserMailer < ApplicationMailer

  ***REMOVED*** Subject can be set in your I18n file at config/locales/en.yml
  ***REMOVED*** with the following lookup:
  ***REMOVED***
  ***REMOVED***   en.user_mailer.registration_confirmation.subject
  ***REMOVED***
  def registration_confirmation(resource)
    @user = resource
    mail to: @user.email,
         subject: 'ユーザーを登録しました。'
  end
end
