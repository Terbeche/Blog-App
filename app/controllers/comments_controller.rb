class CommentsController < ApplicationController

  def new
    comment = Comment.new
    respond_to do |format|
      format.html { render :new, locals: { comment: comment } }
    end
  end


  def create
    comment = Comment.new(params.require(:post).permit(:text))
    respond_to do |format|
      format.html do
        if comment.save
          flash[:success] = 'Comment saved successfully'
          redirect_to comment_url
        else
          flash.now[:error] = 'Error: Comment could not be saved'
          render :new, locals: { comment: comment}
        end
      end
    end
  end
end