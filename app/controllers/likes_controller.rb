class LikesController < ApplicationController

  def like_params
    params
      .require(:like)
      .merge(author: current_user, post_id: params.require(:post_id))
  end

  def create
    @like = Like.new(like_params)
    respond_to do |format|
      format.html do
        if @like.save
          redirect_to user_post_path(current_user, @like.post)
        else
          flash.now[:error] = 'Error: Like could not be saved'
          render :new, locals: { like: }
        end
      end
    end
  end
end
