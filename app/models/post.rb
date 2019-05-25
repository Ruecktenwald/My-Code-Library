class Post < ApplicationRecord
  belongs_to :category
  scope :posts_by, ->(user) { where(user_id: user.id).order(description: :asc) }
  validates_presence_of :description, :code
    
end