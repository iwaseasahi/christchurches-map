class PhotosController < ApplicationController
  before_action :set_church
  before_action :set_photo, only: :destroy

  def index
    @photo = Photo.new
  end

  def create
    @photo = Photo.new(photo_params)
    flash.now[:alert] = '登録できませんでした。' unless @photo.save
    redirect_to church_photos_path(church_id: @church.id)
  end

  def destroy
    @photo.destroy
    redirect_to church_photos_path(church_id: @church.id)
  end

  private

  def set_church
    @church = Church.find(params[:church_id])
  end

  def set_photo
    @photo = Photo.find(params[:id])
  end

  def photo_params
    params.require(:photo).permit(:file_name, :sort_of_number)
  end
end
