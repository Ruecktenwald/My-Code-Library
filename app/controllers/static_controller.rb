class StaticController < ApplicationController
	
  def homepage
    @sorted_categories = @categories.order(name: :asc)   
  end

end