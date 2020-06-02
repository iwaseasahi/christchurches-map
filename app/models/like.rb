class Like < ApplicationRecord
  belongs_to :user
  belongs_to :church

  validates :user, presence: true
  validates :church, presence: true
end
