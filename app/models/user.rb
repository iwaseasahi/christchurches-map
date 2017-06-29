class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  validates :last_name,  presence: true, length: { maximum: 50 }
  validates :first_name, presence: true, length: { maximum: 50 }

  devise :database_authenticatable, :registerable, :confirmable,
         :recoverable, :rememberable, :trackable, :validatable

  mount_uploader :icon, IconUploader

  has_many :likes
  has_many :like_churches, through: :likes, source: :church
  has_many :comments
  has_many :comment_churches, through: :comments, source: :church

  def full_name
    "#{last_name} #{first_name}"
  end
end
