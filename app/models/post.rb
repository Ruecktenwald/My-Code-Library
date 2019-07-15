class Post < ApplicationRecord
  belongs_to :category
  belongs_to :user
  validates_presence_of :description, :code, :category_id
  before_create :set_slug

  def to_param
    slug
  end

  private

  def set_slug
    Post.last ? next_id = (Post.last.id + 1).to_s : next_id = "1" # takes the next number in the sequence
    if slug.blank?
      self.slug = next_id + "-" + description.downcase.strip.gsub(/\s+/, "-")
    end
  end
  
end