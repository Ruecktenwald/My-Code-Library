class CategoriesController < ApplicationController
  before_action :set_category, only: [:show, :edit, :update, :destroy]

  def index   
  end

  def show
  end

  def top_four
  end

  def new
    @category = Category.new
  end

  def create
    @category = Category.new(category_params)
    @category.name = params[:category][:name].capitalize
    @category.user_id = current_user.id
    
    if @category.save 
      redirect_to(@category, :flash => [:success])
    else
      render :new
    end
  end

  def edit
  end

  def update

    if @category.update(category_params)
      redirect_to @category, notice: "You successfully updated your post!"
    else
      render :edit
    end
  end

  def destroy
    if @category.destroy
      redirect_to categories_path, notice: 'Your category was deleted successfully'
    else
      render :show, alert: 'Your category could not be deleted'
    end
  end

  private

  def category_params
    params.require(:category).permit(:name, :status)
  end

  def set_category
    @category = Category.find(params[:id])
  end
end
