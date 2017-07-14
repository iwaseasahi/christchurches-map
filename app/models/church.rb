class Church < ApplicationRecord
  soft_deletable

  validates :name, presence: true
  validates :group_id, presence: true
  validates :prefecture_id, presence: true
  validates :address, presence: true

  mount_uploader :top_image, TopImageUploader

  belongs_to :group
  belongs_to :prefecture
  has_many :likes, dependent: :destroy
  has_many :comments, -> { order(created_at: :desc).without_soft_destroyed } , dependent: :destroy

  geocoded_by :address
  after_validation :geocode, if: lambda { |obj| obj.address_changed? }

  def display_tel
    if tel.present?
      tel
    else
      '未設定'
    end
  end

  def display_email
    if email.present?
      email
    else
      '未設定'
    end
  end

  def display_url
    if url.present?
      url_link = "<a href=***REMOVED***{url} target='_blank'>ホームページはこちら</a>"
      url_link.html_safe
    else
      '未設定'
    end
  end
end
