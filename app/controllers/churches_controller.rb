class ChurchesController < ApplicationController
  before_action :set_church, only: %i(show edit update destroy upload_top_image)

  def show
    build_marker(@church)
    @comment = Comment.new
  end

  def new
    @church = Church.new
  end

  def edit; end

  def create
    @church = Church.new(church_params)
    if @church.save
      redirect_to new_church_path
    else
      render 'new'
    end
  end

  def update
    if @church.update(church_params)
      redirect_to church_path(@church)
    else
      render 'edit'
    end
  end

  def destroy
    @church.soft_destroy
    redirect_to maps_path
  end

  def modal; end

  def upload_top_image
    if @church.update(top_image_params)
      redirect_to edit_church_path(@church.id)
    else
      redirect_to edit_church_path(@church.id), alert: 'トップ画像が変更できませんでした。'
    end
  end

  private

  def set_church
    @church = Church.find(params[:id])
  end

  def church_params
    params.require(:church).permit(:name, :group_id, :postal_code, :prefecture_id, :address, :tel, :fax, :email, :url, :worshiping_time)
  end

  def top_image_params
    params.require(:church).permit(:top_image)
  end

  def build_marker(church)
    @hash = Gmaps4rails.build_markers(church) do |church, marker|
      marker.lat(church.latitude)
      marker.lng(church.longitude)
      marker.infowindow church_info(church)
    end
  end

  def church_info(church)
    info = ''
    info += "<h4>#{church.address}</h4>"
    info.html_safe
  end
end
