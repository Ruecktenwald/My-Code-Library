class Post < ApplicationRecord  
  belongs_to :user
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
    "React"
  ]

  end