class Photo < ApplicationRecord
  belongs_to :church

  validates :church_id,      presence: true
  validates :file_name,      presence: true
  validates :sort_of_number, presence: true

  mount_uploader :file_name, PhotoUploader
end
