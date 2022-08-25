class ApplicationController < ActionController::Base
  include Pundit
  protect_from_forgery with: :exception
  before_action :authenticate_user!, :set_categories, :set_top_four
  rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized

  private

  def user_not_authorized
    notice: "You are not authorized to perform this action."
    redirect_to(root_path)
  end

  def set_categories   
    @categories = Category.where(user_id: current_user)
  end

  def set_top_four
    @top_four_categories = @categories.where(status: 1)  
  end
end
