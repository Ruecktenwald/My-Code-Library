class User < ApplicationRecord
  has_many :categories
  devise :database_authenticatable, :registerable,
    :recoverable, :rememberable, :validatable     
  
  validates_presence_of :first_name, :last_name, :email, :password, :password_confirmation
 
end
