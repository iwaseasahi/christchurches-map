class Church < ApplicationRecord
  soft_deletable
  belongs_to :group
  belongs_to :prefecture
  has_many :likes, dependent: :destroy
  has_many :comments, dependent: :destroy
end
