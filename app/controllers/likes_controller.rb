class LikesController < ApplicationController
  def like
    @church = Church.find(params[:church_id])
    like = current_user.likes.build(church_id: @church.id)
    like.save
  end

  def unlike
    @church = Church.find(params[:church_id])
    like = current_user.likes.find_by(church_id: @church.id)
    like.destroy
  end
end
