class Like < ApplicationRecord
  belongs_to :user
  belongs_to :church

  validates :user, presence: true, uniqueness: { scope: :church_id, case_sensitive: false }
  validates :church, presence: true
end
