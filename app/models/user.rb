class User < ApplicationRecord
  ***REMOVED*** Include default devise modules. Others available are:
  ***REMOVED*** :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :confirmable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :likes
  has_many :like_churches, through: :likes, source: :church
  has_many :comments
  has_many :comment_churches, through: :comments, source: :church
end
