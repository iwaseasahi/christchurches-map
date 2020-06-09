class ChurchesController < ApplicationController
  before_action :authenticate_user!, only: %i[edit update destroy]
  before_action :set_church, only: %i[show edit update destroy]

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
      redirect_to church_path(@church)
    else
      flash.now[:alert] = '登録できませんでした。'
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

  private

  def set_church
    @church = Church.find(params[:id])
  end

  def church_params
    params.require(:church).permit(:name, :group_id, :postal_code, :prefecture_id, :address, :tel, :fax, :email, :url, :worshiping_time, :top_image)
  end

  def build_marker(church)
    @hash = Gmaps4rails.build_markers(church) do |church, marker|
      marker.lat(church.latitude)
      marker.lng(church.longitude)
      marker.infowindow(church.info_only_address)
    end
  end
end
