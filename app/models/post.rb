class Post < ApplicationRecord
  validates_presence_of :category, :description, :code

	def index
	end
end
