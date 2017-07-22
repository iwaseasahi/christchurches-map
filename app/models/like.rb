class Like < ApplicationRecord
  validates :user_id,  presence: true
  validates :church_id,  presence: true

  belongs_to :user
  belongs_to :church
end
