# frozen_string_literal: true

module ChurchDecorator
  def display_tel
    tel ? tel : '未設定'
  end

  def display_email
    email ? "<a href='mailto:#{email}'>メールはこちら</a>".html_safe : '未設定'
  end

  def display_url
    url ? "<a href=#{url} target='_blank'>ホームページはこちら</a>".html_safe : '未設定'
  end

  def info_only_address
    "<h4>#{address}</h4>".html_safe
  end

  def infowindow
    info = "<h4>#{name}</h4>"
    info += "<p>#{group.name}</p>"
    info += "<p>#{address}</p>"
    info += "<p><a href='/churches/#{id}'>詳細はこちら</a></p>"
    info += "<p><a href=#{url} target='_blank'>ホームページはこちら</a></p>" if url.present?
    info.html_safe
  end
end
