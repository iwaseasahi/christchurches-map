class User < ApplicationRecord
  ***REMOVED*** Include default devise modules. Others available are:
  ***REMOVED*** :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :confirmable,
         :recoverable, :rememberable, :trackable, :validatable
end
