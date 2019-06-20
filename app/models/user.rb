class User < ApplicationRecord
  has_many :categories, dependent: :destroy
  has_many :posts, dependent: :destroy
  devise :database_authenticatable, :confirmable, :registerable,
    :recoverable, :rememberable, :validatable     
  
  validates_presence_of :first_name, :last_name, :email, :password, :password_confirmation
 
end
