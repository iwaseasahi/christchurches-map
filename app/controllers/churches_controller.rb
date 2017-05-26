class ChurchesController < ApplicationController
  before_action :set_church, only: %i(show edit update destroy)

  def show; end

  def new
    @church = Church.new
  end

  def edit;end

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

  private

  def set_church
    @church = Church.find(params[:id])
  end

  def church_params
    params.require(:church).permit(:name, :group_id, :postal_code, :prefecture_id, :address, :tel, :fax, :email, :url, :worshiping_time)
  end
end
