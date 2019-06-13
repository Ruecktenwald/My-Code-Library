class User < ApplicationRecord
  has_many :categories
  has_many :posts
  devise :database_authenticatable, :confirmable, :registerable,
    :recoverable, :rememberable, :validatable     
  
  validates_presence_of :first_name, :last_name, :email, :password, :password_confirmation
 
end
