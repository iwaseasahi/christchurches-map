class CommentsController < ApplicationController
  before_action :set_church, only: %i(create)

  def create
    @comment = current_user.comments.build(church_id: @church.id, comment: comment_params[:comment])
    @comment.save
  end

  def destroy
    @comment = Comment.find(params[:comment_id])
    @comment.soft_destroy
  end

  private

  def set_church
    @church = Church.find(params[:church_id])
  end

  def comment_params
    params.require(:comment).permit(:comment)
  end
end
