class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :church

  validates :comment, presence: true
  validates :user, presence: true
  validates :church, presence: true
end
