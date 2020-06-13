require "administrate/base_dashboard"

class ChurchDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
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
  }.freeze

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = [
    :id,
    :group,
    :name,
    :prefecture,
    :likes,
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    :id,
    :group,
    :name,
    :prefecture,
    :likes,
    :comments,
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
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :group,
    :name,
    :prefecture,
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
  ].freeze

  # Overwrite this method to customize how churches are displayed
  # across all pages of the admin dashboard.
  #
  def display_resource(church)
    church.name
  end
end
