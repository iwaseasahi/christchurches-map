class Maps::SearchFromTopController < ApplicationController
  before_action :check_ransack_params, only: :index

  def index
    @q = Church.ransack(params[:q])
    @churches = @q.result(distinct: true)
    build_markers(@churches)
  end

  private

  def check_ransack_params
    redirect_to maps_path if params[:q].blank? || params[:q][:name_or_address_cont].blank?
  end

  def build_markers(churches)
    return set_map_position_basic if churches.blank?

    @hash = Gmaps4rails.build_markers(churches) do |church, marker|
      marker.lat(church.latitude)
      marker.lng(church.longitude)
      marker.infowindow(ActiveDecorator::Decorator.instance.decorate(church).infowindow)
    end
  end

  def set_map_position_basic
    @map_position = { lat: 38.5, lng: 137.0, zoom: 5 }
  end
end
