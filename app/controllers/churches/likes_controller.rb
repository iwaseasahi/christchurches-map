class Churches::LikesController < ApplicationController
  before_action :set_church

  def create
    current_user.likes.build(church_id: @church.id).save
  end

  def destroy
    current_user.likes.find_by!(church_id: @church.id).destroy
  end

  private

  def set_church
    @church = Church.find(params[:church_id])
  end
end
