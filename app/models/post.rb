class Post < ApplicationRecord  
	belongs_to :user
	#scope :rails, -> { where(category: "Rails") }
	#scope :javascript, -> { where(category: "Javascript") }
	#scope :html, -> { where(category: "HTML") }
	#scope :ruby, -> { where(category: "Ruby") }
	validates_presence_of :category, :description, :code


	CATEGORIES =["Rails","Javascript","HTML","Ruby", "Angular"]





	def generate_slug
		self.slug ||= category.parameterize if category
	end
end