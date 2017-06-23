class Comment < ApplicationRecord
  soft_deletable
  validates :comment,  presence: true

  belongs_to :user
  belongs_to :church
end
