class MapsController < ApplicationController

  def index
    @q = Church.ransack(params[:q])
    set_map_position_basic
  end

  def search
    @q = Church.ransack(params[:q])
    @churches = @q.result(distinct: true)
    build_markers(@churches)
    set_map_position_basic if @churches.blank? || params[:q].blank?
    set_map_position(params)
  end

  private

  def build_markers(churches)
    @hash = Gmaps4rails.build_markers(churches) do |church, marker|
      marker.lat(church.latitude)
      marker.lng(church.longitude)
      marker.infowindow church_info(church)
    end
  end

  def church_info(church)
    info = ''
    info += "<h4>#{church.name}</h4>"
    info += "<p>#{church.group.name}</p>"
    info += "<p>#{church.address}</p>"
    info += "<a href='/churches/#{church.id}'>詳細はこちら</a>"
    info.html_safe
  end

  def set_map_position_basic
    @map_position = {
      lat: 38.5,
      lng: 137.0,
      zoom: 5
    }
  end

  def set_map_position(params)
    return if params[:q].blank?
    group_id = params[:q][:group_id_eq]
    prefecture_id = params[:q][:prefecture_id_eq]
    name = params[:q][:name_cont]
    # 検索が何もない場合
    if group_id.blank? && prefecture_id.blank? && name.blank?
      set_map_position_basic
      # 都道府県検索の場合
    elsif prefecture_id.present? && group_id.blank? && name.blank?
      prefecture = Prefecture.find(prefecture_id)
      @map_position = {
        lat: prefecture.latitude,
        lng: prefecture.longitude,
        zoom: prefecture.zoom_level
      }
    end
  end

end
