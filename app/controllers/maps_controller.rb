class MapsController < ApplicationController

  def index
    @q = Church.ransack(params[:q])
    set_map_position_basic
  end

  def search
    case params_pattern(params)
    when 'nothing'
      redirect_to maps_path
    when 'only_prefecture'
      search_result(params)
      prefecture = Prefecture.find(params[:q][:prefecture_id_eq])
      @map_position = prefecture.set_position
    when 'normal'
      search_result(params)
    else
      set_map_position_basic
    end
  end

  def search_from_top
    if params[:q].blank? || params[:q][:name_or_address_cont].blank?
      redirect_to maps_path
    else
      search_result(params)
    end
  end

  private

  def search_result(params)
    @q = Church.ransack(params[:q])
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
    @map_position = {
      lat: 38.5,
      lng: 137.0,
      zoom: 5
    }
  end

  def params_pattern(params)
    return 'nothing' if params[:q].blank?
    group_id      = params[:q][:group_id_eq]
    prefecture_id = params[:q][:prefecture_id_eq]
    name          = params[:q][:name_cont]
    address       = params[:q][:address_cont]
    if group_id.blank? && prefecture_id.blank? && name.blank? && address.blank?
      'nothing'
    elsif prefecture_id.present? && group_id.blank? && name.blank? && address.blank?
      'only_prefecture'
    else
      'normal'
    end
  end
end
