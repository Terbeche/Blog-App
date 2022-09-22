class LikesController < ApplicationController
  def create
    @like = Like.new(params.require(:like))
    @like.author = current_user
    respond_to do |format|
      format.html do
        if @like.save
          redirect_to post_url
        else
          flash.now[:error] = 'Error: Like could not be saved'
          render :new, locals: { like: }
        end
      end
    end
  end
end
