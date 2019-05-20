class Post < ApplicationRecord  
  belongs_to :user
  scope :posts_by, ->(user) { where(user_id: user.id).order(created_at: :desc) }
  validates_presence_of :category, :description, :code

  CATEGORIES = [
    "Rails",
    "Javascript",
    "HTML",
    "Ruby", 
    "Angular",
    "Bootstrap",
    "Heroku",
    "Git",
    "Typescript",
    "React",
    "Node"
  ]
  
end