module Admin
  class CommentsController < Admin::ApplicationController
    ***REMOVED*** To customize the behavior of this controller,
    ***REMOVED*** you can overwrite any of the RESTful actions. For example:
    ***REMOVED***
    ***REMOVED*** def index
    ***REMOVED***   super
    ***REMOVED***   @resources = Comment.
    ***REMOVED***     page(params[:page]).
    ***REMOVED***     per(10)
    ***REMOVED*** end

    ***REMOVED*** Define a custom finder by overriding the `find_resource` method:
    ***REMOVED*** def find_resource(param)
    ***REMOVED***   Comment.find_by!(slug: param)
    ***REMOVED*** end

    ***REMOVED*** See https://administrate-prototype.herokuapp.com/customizing_controller_actions
    ***REMOVED*** for more information
  end
end
