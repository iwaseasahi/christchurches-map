class Church < ApplicationRecord
  soft_deletable
  has_paper_trail

  belongs_to :group
  belongs_to :prefecture

  has_many   :likes, dependent: :destroy
  has_many   :comments, -> { order(created_at: :desc) }, dependent: :destroy
  has_many   :photos, dependent: :destroy

  validates :name, presence: true
  validates :group, presence: true
  validates :prefecture, presence: true
  validates :address, presence: true

  mount_uploader :top_image, TopImageUploader

  geocoded_by :address
  after_validation :geocode, if: :address_changed?
end
