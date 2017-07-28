require "administrate/base_dashboard"

class ChurchDashboard < Administrate::BaseDashboard
  ***REMOVED*** ATTRIBUTE_TYPES
  ***REMOVED*** a hash that describes the type of each of the model's fields.
  ***REMOVED***
  ***REMOVED*** Each different type represents an Administrate::Field object,
  ***REMOVED*** which determines how the attribute is displayed
  ***REMOVED*** on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    versions: Field::HasMany.with_options(class_name: "PaperTrail::Version"),
    group: Field::BelongsTo,
    prefecture: Field::BelongsTo,
    likes: Field::HasMany,
    comments: Field::HasMany,
    id: Field::Number,
    name: Field::String,
    postal_code: Field::String,
    address: Field::String,
    latitude: Field::String.with_options(searchable: false),
    longitude: Field::String.with_options(searchable: false),
    tel: Field::String,
    fax: Field::String,
    email: Field::String,
    url: Field::Text,
    worshiping_time: Field::Text,
    top_image: Field::String,
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
    :versions,
    :group,
    :prefecture,
    :likes,
  ].freeze

  ***REMOVED*** SHOW_PAGE_ATTRIBUTES
  ***REMOVED*** an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    :versions,
    :group,
    :prefecture,
    :likes,
    :comments,
    :id,
    :name,
    :postal_code,
    :address,
    :latitude,
    :longitude,
    :tel,
    :fax,
    :email,
    :url,
    :worshiping_time,
    :top_image,
    :created_at,
    :updated_at,
    :soft_destroyed_at,
  ].freeze

  ***REMOVED*** FORM_ATTRIBUTES
  ***REMOVED*** an array of attributes that will be displayed
  ***REMOVED*** on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :versions,
    :group,
    :prefecture,
    :likes,
    :comments,
    :name,
    :postal_code,
    :address,
    :latitude,
    :longitude,
    :tel,
    :fax,
    :email,
    :url,
    :worshiping_time,
    :top_image,
    :soft_destroyed_at,
  ].freeze

  ***REMOVED*** Overwrite this method to customize how churches are displayed
  ***REMOVED*** across all pages of the admin dashboard.
  ***REMOVED***
  ***REMOVED*** def display_resource(church)
  ***REMOVED***   "Church ***REMOVED******REMOVED***{church.id}"
  ***REMOVED*** end
end
