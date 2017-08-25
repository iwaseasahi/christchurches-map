class User < ApplicationRecord
  ***REMOVED*** Include default devise modules. Others available are:
  ***REMOVED*** :confirmable, :lockable, :timeoutable and :omniauthable
  validates :last_name,  presence: true, length: { maximum: 50 }
  validates :first_name, presence: true, length: { maximum: 50 }

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  mount_uploader :icon, IconUploader

  has_many :likes, dependent: :destroy
  has_many :like_churches, through: :likes, source: :church
  has_many :comments, dependent: :destroy
  has_many :comment_churches, through: :comments, source: :church

  def full_name
    "***REMOVED***{last_name} ***REMOVED***{first_name}"
  end
end
