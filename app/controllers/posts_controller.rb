class PostsController < ApplicationController
  def index
    @user = User.find(params[:user_id])
    @posts = @user.posts
  end

  def show
    @post = Post.find(params[:id])
  end

  def new
    post = Post.new
    respond_to do |format|
      format.html { render :new, locals: { post: post } }
    end
  end

  def create
    post = Post.new(params.require(:post).permit(:title, :text))
    respond_to do |format|
      format.html do
        if post.save
          flash[:success] = 'Post saved successfully'
          redirect_to mc_questions_url
        else
          flash.now[:error] = 'Error: Post could not be saved'
          render :new, locals: { post: }
        end
      end
    end
  end
end
