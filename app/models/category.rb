class Category < ApplicationRecord
  belongs_to :user
  has_many :posts, dependent: :destroy
  validates_presence_of :name
  scope :category_by, ->(user) { where(user_id: user.id).order(name: :asc) }
end
