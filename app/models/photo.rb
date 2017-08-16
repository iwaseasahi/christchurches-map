class Photo < ApplicationRecord
  belongs_to :church

  mount_uploader :file_name, PhotoUploader
end
