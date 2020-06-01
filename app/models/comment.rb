class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :church

  validates :comment, presence: true
  validates :user, presence: true
  validates :church, presence: true

  def time
    created_at.strftime('%Y-%m-%d %H:%M')
  end
end
