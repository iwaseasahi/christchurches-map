class Comment < ApplicationRecord
  soft_deletable
  belongs_to :user
  belongs_to :church
end
