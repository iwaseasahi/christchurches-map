class Prefecture < ApplicationRecord
  has_many :churches

  def set_position
    {
      lat:  latitude,
      lng:  longitude,
      zoom: zoom_level
    }
  end
end
