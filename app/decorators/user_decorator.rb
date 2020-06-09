# frozen_string_literal: true

module UserDecorator
  def full_name
    "#{last_name} #{first_name}"
  end
end
