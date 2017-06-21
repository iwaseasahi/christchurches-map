class CommentsController < ApplicationController
  before_action :set_church, only: %i(create destroy)

  def create
    comment = current_user.comments.build(church_id: @church.id, comment: comment_params[:comment])
    comment.save
    redirect_to church_path(@church)
  end

  def destory
    comment = current_user.comments.find_by(church_id: @church.id, comment: comment_params[:comment])
    comment.destroy
  end

  private

  def set_church
    @church = Church.find(params[:church_id])
  end

  def comment_params
    params.require(:comment).permit(:comment)
  end
end
