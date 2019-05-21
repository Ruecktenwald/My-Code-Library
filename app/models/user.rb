class User < ApplicationRecord
  has_many :posts, dependent: :destroy
  devise :database_authenticatable, :registerable,
    :recoverable, :rememberable, :validatable     
  
  validates_presence_of :first_name, :last_name, :email, :password, :password_confirmation
 
end
