class Users::UploadIconsController < ApplicationController
  def create
    @user = User.find(params[:user_id])

    if @user.update(icon_params)
      redirect_to user_path(@user.id)
    else
      redirect_to user_path(@user.id), alert: 'アイコンが変更できませんでした。'
    end
  end

  private

  def icon_params
    params.require(:user).permit(:icon)
  end
end
