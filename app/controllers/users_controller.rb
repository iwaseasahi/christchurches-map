class UsersController < ApplicationController
  before_action :set_user, only: %i[show upload_icon]

  def show; end

  def upload_icon
    if @user.update(icon_params)
      redirect_to user_path(@user.id)
    else
      redirect_to user_path(@user.id), alert: 'アイコンが変更できませんでした。'
    end
  end

  private

  def set_user
    @user = User.find(params[:id])
  end

  def icon_params
    params.require(:user).permit(:icon)
  end
end
