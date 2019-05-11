class PostsController < ApplicationController
	before_action :set_post, only: [:show,:edit,:update,:destroy]


  def index 
   if params[:category]
     @posts = Post.where(category: params[:category])
   else 
    @posts = Post.all
  end

end

def new
  @post = Post.new 
end

def create
  @post = Post.new(post_params)
  @post.user_id = current_user.id

  if @post.save 
    redirect_to(@post, :flash => [:success])
  else
   render :new
 end
end

def edit
end

def update
  if @post.update(post_params)
   redirect_to @post, notice: "You successfully updated your post!"
 else
   render :edit
 end
end

def show	
end

def destroy
  @post.delete
  redirect_to posts_path, notice: 'Your post was deleted successfully'
end

def search  

end


private

def post_params
 params.require(:post).permit(:category,:description,:code,:user_id)
end

def set_post
 @post = Post.find(params[:id])
end

end
