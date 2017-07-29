require "administrate/base_dashboard"

class GroupDashboard < Administrate::BaseDashboard
  ***REMOVED*** ATTRIBUTE_TYPES
  ***REMOVED*** a hash that describes the type of each of the model's fields.
  ***REMOVED***
  ***REMOVED*** Each different type represents an Administrate::Field object,
  ***REMOVED*** which determines how the attribute is displayed
  ***REMOVED*** on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    churches: Field::HasMany,
    id: Field::Number,
    name: Field::String,
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
    soft_destroyed_at: Field::DateTime,
  }.freeze

  ***REMOVED*** COLLECTION_ATTRIBUTES
  ***REMOVED*** an array of attributes that will be displayed on the model's index page.
  ***REMOVED***
  ***REMOVED*** By default, it's limited to four items to reduce clutter on index pages.
  ***REMOVED*** Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = [
    :id,
    :name,
    :churches,
  ].freeze

  ***REMOVED*** SHOW_PAGE_ATTRIBUTES
  ***REMOVED*** an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    :churches,
    :id,
    :name,
    :soft_destroyed_at,
  ].freeze

  ***REMOVED*** FORM_ATTRIBUTES
  ***REMOVED*** an array of attributes that will be displayed
  ***REMOVED*** on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :churches,
    :name,
    :soft_destroyed_at,
  ].freeze

  ***REMOVED*** Overwrite this method to customize how groups are displayed
  ***REMOVED*** across all pages of the admin dashboard.
  ***REMOVED***
  def display_resource(group)
    group.name
  end
end
