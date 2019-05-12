class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!
  before_action :set_categories
  
  
  private
  def set_categories
    @categories = Post::CATEGORIES.first(4)
  end
end
