class Post < ApplicationRecord  
  belongs_to :user
  validates_presence_of :category, :description, :code

  scope :posts_by, ->(user) { where(user_id: user.id).order("created_at desc") }

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
    "React"
  ]
  
  
  end