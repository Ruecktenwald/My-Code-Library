class PostsController < ApplicationController
  before_action :set_post, only: [:show, :edit, :update, :destroy]

  def index 
    @posts = Post.order(created_at: :desc)
    if params[:category]
      @posts = @posts.where(category: params[:category])
    end
  end

  def new
    @post = Post.new 
  end

  def create
    @post = Post.new(post_params)

    if @post.save 
      redirect_to(@post, :flash => [:success])
    else
      render :new
    end
  end

  def edit
    authorize @post
  end

  def update
    authorize @post
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
    redirect_to root_path, notice: 'Your post was deleted successfully'
  end

  def recent
    if params[:category]
      @posts = Post.where(category: params[:category]).order(created_at: :desc)
    else 
      @posts = Post.all.order(created_at: :desc)
    end
  end

  def search  
    if params[:search].blank?  
      redirect_to(root_path, alert: "Empty field!") and return  
    else
      @parameter = params[:search].downcase  
      @post_results = Post.where("lower(description) LIKE :search", search: "%#{@parameter}%").order(created_at: :desc)
      @category_results = @categories.where("lower(name) LIKE :search", search: "%#{@parameter}%").order(created_at: :desc)    
    end
  end

  private

  def post_params
    params.require(:post).permit(:description, :code, :user_id, :category_id)
  end

  def set_post
    @post = Post.find(params[:id])
  end

end
