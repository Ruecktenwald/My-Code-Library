class ApplicationController < ActionController::Base
  include Pundit
  
  protect_from_forgery with: :exception
  before_action :authenticate_user!
  before_action :set_categories
  
  rescue_from Pundit::NotAuthorizedError do |exception|
        redirect_to root_url, alert: exception.message
      end

  
  private
  def set_categories
    @categories = Post::CATEGORIES.first(4)
  end
end
