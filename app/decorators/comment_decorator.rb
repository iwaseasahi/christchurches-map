# frozen_string_literal: true

module CommentDecorator
  def time
    created_at.strftime('%Y-%m-%d %H:%M')
  end
end
