class Churches::UploadTopImagesController < ApplicationController
  before_action :set_church
  before_action :authenticate_user!

  def create
    if @church.update(top_image_params)
      redirect_to edit_church_path(@church.id)
    else
      redirect_to edit_church_path(@church.id), alert: 'トップ画像が変更できませんでした。'
    end
  end

  private

  def set_church
    @church = Church.find(params[:church_id])
  end

  def top_image_params
    params.require(:church).permit(:top_image)
  end
end
