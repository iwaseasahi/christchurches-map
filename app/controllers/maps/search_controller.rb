class Maps::SearchController < ApplicationController
  before_action :empty_ransack_params?, only: :index
  before_action :empty_ransack_params_values?, only: :index

  def index
    set_map_position_prefecture if only_prefecture?

    search_result
  end

  private

  def empty_ransack_params?
    redirect_to maps_path if params[:q].blank?
  end

  def empty_ransack_params_values?
    redirect_to maps_path if ransack_params.to_h.values.reject(&:empty?).blank?
  end

  def ransack_params
    params.require(:q).permit(:group_id_eq, :prefecture_id_eq, :name_cont, :address_cont)
  end

  def search_result
    @q = Church.ransack(ransack_params)
    @churches = @q.result(distinct: true)
    build_markers(@churches)
  end

  def build_markers(churches)
    return set_map_position_basic if churches.blank?

    @hash = Gmaps4rails.build_markers(churches) do |church, marker|
      marker.lat(church.latitude)
      marker.lng(church.longitude)
      marker.infowindow(church.church_info)
    end
  end

  def set_map_position_basic
    @map_position = { lat: 38.5, lng: 137.0, zoom: 5 }
  end

  def set_map_position_prefecture
    @map_position = Prefecture.find(ransack_params[:prefecture_id_eq]).set_position
  end

  def only_prefecture?
    ransack_params[:prefecture_id_eq].present? &&
      ransack_params[:group_id_eq].empty? &&
      ransack_params[:name_cont].empty? &&
      ransack_params[:address_cont].empty?
  end
end
