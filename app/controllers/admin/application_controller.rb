***REMOVED*** All Administrate controllers inherit from this `Admin::ApplicationController`,
***REMOVED*** making it the ideal place to put authentication logic or other
***REMOVED*** before_actions.
***REMOVED***
***REMOVED*** If you want to add pagination or other controller-level concerns,
***REMOVED*** you're free to overwrite the RESTful controller actions.
module Admin
  class ApplicationController < Administrate::ApplicationController
    before_action :authenticate_admin

    def authenticate_admin
      ***REMOVED*** BASIC認証
      authenticate_or_request_with_http_basic('Administration') do |name, password|
        name == ENV['ADMIN_USERNAME'] && password == ENV['ADMIN_PASSWORD']
      end
    end

    ***REMOVED*** Override this value to specify the number of elements to display at a time
    ***REMOVED*** on index pages. Defaults to 20.
    ***REMOVED*** def records_per_page
    ***REMOVED***   params[:per_page] || 20
    ***REMOVED*** end
  end
end
