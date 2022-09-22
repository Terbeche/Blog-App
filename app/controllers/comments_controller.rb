class CommentsController < ApplicationController
  def new
    @comment = Comment.new
    respond_to do |format|
      format.html { render :new, locals: { comment: @comment} }
    end
  end

  def comment_params
    params.require(:comment).permit(:post_id, :text)
  end

  def create
    @comment = Comment.new(comment_params)
    @comment.author = current_user
    respond_to do |format|
      format.html do
        if @comment.save
          flash[:success] = 'Comment saved successfully'
          redirect_to post_comments_path(current_user)
        else
          flash.now[:error] = 'Error: Comment could not be saved'
          redirect_to new_post_comment_path
        end
      end
    end
  end
end
