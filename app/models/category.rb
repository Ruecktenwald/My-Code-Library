class Category < ApplicationRecord
  enum status: { regular: 0, top_four: 1 }
  belongs_to :user
  has_many :posts, dependent: :destroy
  validates_presence_of :name
  validates :name, :uniqueness => {:scope=>:user_id}
  before_save :uppercase_category

  def uppercase_category
    self.name.capitalize!
  end
end
