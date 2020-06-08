class Churches::CommentsController < ApplicationController
  before_action :set_church, only: :create
  before_action :set_comment, only: %i[edit update destroy]

  def create
    @comment = current_user.comments.build(church_id: @church.id, comment: comment_params[:comment])
    @comment.save
  end

  def edit; end

  def update
    @comment.update(comment: comment_params[:comment])
  end

  def destroy
    @comment.destroy
  end

  private

  def set_comment
    @comment = Comment.find(params[:id])
  end

  def set_church
    @church = Church.find(params[:church_id])
  end

  def comment_params
    params.require(:comment).permit(:comment)
  end
end
