class Photo < ApplicationRecord
  belongs_to :church

  validates :church, presence: true
  validates :file_name, presence: true
  validates :sort_of_number, presence: true

  mount_uploader :file_name, PhotoUploader
end
