class AddSlugToPosts < ActiveRecord::Migration[5.0]
  def change
    add_column :posts, :slug, :string
    Post.all.each { |p| p.slug = p.id.to_s + "-" + p.description.downcase.strip.gsub(/\s+/, "-"); p.save }
    add_index :posts, :slug, unique: true
    change_column :posts, :slug, :string, :null => false
  end
end
