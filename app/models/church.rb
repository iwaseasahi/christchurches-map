class Church < ApplicationRecord
  soft_deletable

  mount_uploader :top_image, TopImageUploader

  belongs_to :group
  belongs_to :prefecture
  has_many :likes, dependent: :destroy
  has_many :comments, -> { order(created_at: :desc).without_soft_destroyed } , dependent: :destroy

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
      url_link = "<a href=#{url} target='_blank'>ホームページはこちら</a>"
      url_link.html_safe
    else
      '未設定'
    end
  end
end
