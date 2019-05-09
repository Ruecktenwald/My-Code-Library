class Post < ApplicationRecord
  validates_presence_of :category, :description, :code
  belongs_to :user
 	
 	
  scope :rails, -> { where(category: "Rails") }
	scope :javascript, -> { where(category: "Javascript") }
	scope :html, -> { where(category: "HTML") }
	scope :ruby, -> { where(category: "Ruby") }
end