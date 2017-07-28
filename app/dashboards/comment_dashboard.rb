require "administrate/base_dashboard"

class CommentDashboard < Administrate::BaseDashboard
  ***REMOVED*** ATTRIBUTE_TYPES
  ***REMOVED*** a hash that describes the type of each of the model's fields.
  ***REMOVED***
  ***REMOVED*** Each different type represents an Administrate::Field object,
  ***REMOVED*** which determines how the attribute is displayed
  ***REMOVED*** on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    user: Field::BelongsTo,
    church: Field::BelongsTo,
    id: Field::Number,
    comment: Field::Text,
    soft_destroyed_at: Field::DateTime,
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
  }.freeze

  ***REMOVED*** COLLECTION_ATTRIBUTES
  ***REMOVED*** an array of attributes that will be displayed on the model's index page.
  ***REMOVED***
  ***REMOVED*** By default, it's limited to four items to reduce clutter on index pages.
  ***REMOVED*** Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = [
    :user,
    :church,
    :id,
    :comment,
  ].freeze

  ***REMOVED*** SHOW_PAGE_ATTRIBUTES
  ***REMOVED*** an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    :user,
    :church,
    :id,
    :comment,
    :soft_destroyed_at,
    :created_at,
    :updated_at,
  ].freeze

  ***REMOVED*** FORM_ATTRIBUTES
  ***REMOVED*** an array of attributes that will be displayed
  ***REMOVED*** on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :user,
    :church,
    :comment,
    :soft_destroyed_at,
  ].freeze

  ***REMOVED*** Overwrite this method to customize how comments are displayed
  ***REMOVED*** across all pages of the admin dashboard.
  ***REMOVED***
  ***REMOVED*** def display_resource(comment)
  ***REMOVED***   "Comment ***REMOVED******REMOVED***{comment.id}"
  ***REMOVED*** end
end
