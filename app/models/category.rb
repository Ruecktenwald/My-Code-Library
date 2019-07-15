class Category < ApplicationRecord
  enum status: { regular: 0, top_four: 1 }
  belongs_to :user
  has_many :posts, dependent: :destroy
  validates_presence_of :name
  validates :name, :uniqueness => {:scope=>:user_id}
  before_save :uppercase_category
  before_create :set_slug

  def uppercase_category
    self.name.capitalize!
  end

  def to_param
    slug
  end

  private

  def set_slug
    Category.last ? next_id = (Category.last.id + 1).to_s : next_id = "1" # takes the next number in the sequence
    if slug.blank?
      self.slug = next_id + "-" + title.downcase.strip.gsub(/\s+/, "-")
    end
  end
end
