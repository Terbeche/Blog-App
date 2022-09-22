class LikesController < ApplicationController
  def new
    comment = Comment.new
    respond_to do |format|
      format.html { render :new, locals: { comment: } }
    end
  end

  def create
    like = Like.new(params.require(:like))
    respond_to do |format|
      format.html do
      end
    end
  end
end
