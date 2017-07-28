require "administrate/base_dashboard"

class UserDashboard < Administrate::BaseDashboard
  ***REMOVED*** ATTRIBUTE_TYPES
  ***REMOVED*** a hash that describes the type of each of the model's fields.
  ***REMOVED***
  ***REMOVED*** Each different type represents an Administrate::Field object,
  ***REMOVED*** which determines how the attribute is displayed
  ***REMOVED*** on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    likes: Field::HasMany,
    like_churches: Field::HasMany.with_options(class_name: "Church"),
    comments: Field::HasMany,
    comment_churches: Field::HasMany.with_options(class_name: "Church"),
    id: Field::Number,
    email: Field::String,
    encrypted_password: Field::String,
    reset_password_token: Field::String,
    reset_password_sent_at: Field::DateTime,
    remember_created_at: Field::DateTime,
    sign_in_count: Field::Number,
    current_sign_in_at: Field::DateTime,
    last_sign_in_at: Field::DateTime,
    current_sign_in_ip: Field::String,
    last_sign_in_ip: Field::String,
    confirmation_token: Field::String,
    confirmed_at: Field::DateTime,
    confirmation_sent_at: Field::DateTime,
    unconfirmed_email: Field::String,
    last_name: Field::String,
    first_name: Field::String,
    church_id: Field::Number,
    gender: Field::Number,
    icon: Field::String,
    is_***REMOVED*** Field::Boolean,
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
    :likes,
    :like_churches,
    :comments,
    :comment_churches,
  ].freeze

  ***REMOVED*** SHOW_PAGE_ATTRIBUTES
  ***REMOVED*** an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    :likes,
    :like_churches,
    :comments,
    :comment_churches,
    :id,
    :email,
    :encrypted_password,
    :reset_password_token,
    :reset_password_sent_at,
    :remember_created_at,
    :sign_in_count,
    :current_sign_in_at,
    :last_sign_in_at,
    :current_sign_in_ip,
    :last_sign_in_ip,
    :confirmation_token,
    :confirmed_at,
    :confirmation_sent_at,
    :unconfirmed_email,
    :last_name,
    :first_name,
    :church_id,
    :gender,
    :icon,
    :is_test,
    :soft_destroyed_at,
    :created_at,
    :updated_at,
  ].freeze

  ***REMOVED*** FORM_ATTRIBUTES
  ***REMOVED*** an array of attributes that will be displayed
  ***REMOVED*** on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :likes,
    :like_churches,
    :comments,
    :comment_churches,
    :email,
    :encrypted_password,
    :reset_password_token,
    :reset_password_sent_at,
    :remember_created_at,
    :sign_in_count,
    :current_sign_in_at,
    :last_sign_in_at,
    :current_sign_in_ip,
    :last_sign_in_ip,
    :confirmation_token,
    :confirmed_at,
    :confirmation_sent_at,
    :unconfirmed_email,
    :last_name,
    :first_name,
    :church_id,
    :gender,
    :icon,
    :is_test,
    :soft_destroyed_at,
  ].freeze

  ***REMOVED*** Overwrite this method to customize how users are displayed
  ***REMOVED*** across all pages of the admin dashboard.
  ***REMOVED***
  ***REMOVED*** def display_resource(user)
  ***REMOVED***   "User ***REMOVED******REMOVED***{user.id}"
  ***REMOVED*** end
end
