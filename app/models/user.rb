class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  mount_uploader :icon, IconUploader

  has_many :likes, dependent: :destroy
  has_many :like_churches, through: :likes, source: :church
  has_many :comments, dependent: :destroy
  has_many :comment_churches, through: :comments, source: :church

  validates :last_name,  presence: true, length: { maximum: 50 }
  validates :first_name, presence: true, length: { maximum: 50 }

  def full_name
    "#{last_name} #{first_name}"
  end
end
