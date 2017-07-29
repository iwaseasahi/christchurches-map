require "administrate/base_dashboard"

class PrefectureDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    churches: Field::HasMany,
    id: Field::Number,
    name: Field::String,
    latitude: Field::String.with_options(searchable: false),
    longitude: Field::String.with_options(searchable: false),
    zoom_level: Field::Number,
    soft_destroyed_at: Field::DateTime,
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
  }.freeze

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = [
    :id,
    :name,
    :churches,
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    :churches,
    :id,
    :name,
    :latitude,
    :longitude,
    :zoom_level,
    :soft_destroyed_at,
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :churches,
    :name,
    :latitude,
    :longitude,
    :zoom_level,
    :soft_destroyed_at,
  ].freeze

  # Overwrite this method to customize how prefectures are displayed
  # across all pages of the admin dashboard.
  #
  def display_resource(prefecture)
    prefecture.name
  end
end
