class MapsController < ApplicationController
  def index
    @q = Church.ransack(params[:q])
    @map_position = { lat: 38.5, lng: 137.0, zoom: 5 }
  end
end
