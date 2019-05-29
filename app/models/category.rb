class Category < ApplicationRecord
  enum status: { regular: 0, top_four: 1 }
  belongs_to :user
  has_many :posts, dependent: :destroy
  validates_presence_of :name
  validates :name, uniqueness: true
  
end
