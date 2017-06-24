class Comment < ApplicationRecord
  soft_deletable
  validates :comment,  presence: true

  belongs_to :user
  belongs_to :church

  def time
    created_at.strftime('%Y-%m-%d %H:%M')
  end
end
