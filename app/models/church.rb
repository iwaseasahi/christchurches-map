class Church < ApplicationRecord
  soft_deletable
  has_paper_trail

  validates :name,          presence: true
  validates :group_id,      presence: true
  validates :prefecture_id, presence: true
  validates :address,       presence: true

  mount_uploader :top_image, TopImageUploader

  belongs_to :group
  belongs_to :prefecture
  has_many   :likes, dependent: :destroy
  has_many   :comments, -> { order(created_at: :desc) }, dependent: :destroy
  has_many   :photos, dependent: :destroy

  geocoded_by :address
  after_validation :geocode, if: :address_changed?

  def display_tel
    if tel.present?
      tel
    else
      '未設定'
    end
  end

  def display_email
    if email.present?
      email_link = "<a href='mailto:***REMOVED***{email}'>メールはこちら</a>"
      email_link.html_safe
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

  def church_info
    info = ''
    info += "<h4>***REMOVED***{name}</h4>"
    info += "<p>***REMOVED***{group.name}</p>"
    info += "<p>***REMOVED***{address}</p>"
    info += "<p><a href='/churches/***REMOVED***{id}'>詳細はこちら</a></p>"
    info += "<p><a href=***REMOVED***{url} target='_blank'>ホームページはこちら</a></p>" if url.present?
    info.html_safe
  end

  def church_info_only_address
    info = ''
    info += "<h4>***REMOVED***{address}</h4>"
    info.html_safe
  end
end
