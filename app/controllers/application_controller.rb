class ApplicationController < ActionController::Base
  include Pundit
  
  protect_from_forgery with: :exception
  before_action :authenticate_user!
  before_action :set_categories
  
  rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized

  private

  def user_not_authorized
    flash[:alert] = "You are not authorized to perform this action."
    redirect_to(root_path)
  end
  
  def set_categories
    @categories = Post::CATEGORIES.first(4)
  end
end
